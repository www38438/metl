/**
 * Licensed to JumpMind Inc under one or more contributor
 * license agreements.  See the NOTICE file distributed
 * with this work for additional information regarding
 * copyright ownership.  JumpMind Inc licenses this file
 * to you under the GNU General Public License, version 3.0 (GPLv3)
 * (the "License"); you may not use this file except in compliance
 * with the License.
 *
 * You should have received a copy of the GNU General Public License,
 * version 3.0 (GPLv3) along with this library; if not, see
 * <http://www.gnu.org/licenses/>.
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package org.jumpmind.metl.core.runtime.component;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.jumpmind.exception.IoException;
import org.jumpmind.metl.core.model.Component;
import org.jumpmind.metl.core.runtime.LogLevel;
import org.jumpmind.metl.core.runtime.Message;
import org.jumpmind.metl.core.runtime.flow.ISendMessageCallback;
import org.jumpmind.metl.core.runtime.resource.IStreamable;

public class Zip extends AbstractComponentRuntime {

    public static final String TYPE = "Zip";

    public final static String SETTING_RELATIVE_PATH = "relative.path";

    public static final String SETTING_MUST_EXIST = "must.exist";

    public final static String SETTING_DELETE_ON_COMPLETE = "delete.on.complete";

    public final static String SETTING_ENCODING = "encoding";

    String relativePathAndFile;

    boolean mustExist;

    boolean deleteOnComplete = false;

    String encoding = "UTF-8";

    List<String> fileNames;

    @Override
    protected void start() {
        Component component = getComponent();
        relativePathAndFile = component.get(SETTING_RELATIVE_PATH, relativePathAndFile);
        mustExist = component.getBoolean(SETTING_MUST_EXIST, mustExist);
        deleteOnComplete = component.getBoolean(SETTING_DELETE_ON_COMPLETE, deleteOnComplete);
        encoding = component.get(SETTING_ENCODING, encoding);
        fileNames = new ArrayList<String>();
    }

    @Override
    public void handle(Message inputMessage, ISendMessageCallback messageTarget, boolean unitOfWorkBoundaryReached) {
        List<String> files = inputMessage.getPayload();
        if (files != null) {
            fileNames.addAll(files);
            getComponentStatistics().incrementNumberEntitiesProcessed(files.size());
        }
        
        if (unitOfWorkBoundaryReached) {
            IStreamable streamable = getResourceReference();
            ZipOutputStream zos = null;
            try {
                streamable.delete(relativePathAndFile);
                zos = new ZipOutputStream(streamable.getOutputStream(relativePathAndFile, false), Charset.forName(encoding));

                for (String fileName : fileNames) {
                    File file = new File(fileName);                                
                    log(LogLevel.INFO, "Received file name to add to zip: %s", fileName);
                    if (mustExist && !file.exists()) {
                        throw new IoException(String.format("Could not find file to zip: %s", fileName));
                    }

                    if (file.exists()) {
                        try {
                            if (file.isFile()) {
                                ZipEntry entry = new ZipEntry(file.getName());
                                entry.setSize(file.length());
                                entry.setTime(file.lastModified());
                                zos.putNextEntry(entry);
                                log(LogLevel.INFO, "Adding %s", file.getName());
                                FileInputStream fis = new FileInputStream(file);
                                try {
                                    IOUtils.copy(fis, zos);
                                } finally {
                                    IOUtils.closeQuietly(fis);
                                }
                            }
                            zos.closeEntry();
                        } catch (IOException e) {
                            throw new IoException(e);
                        }
                    }
                }
                
                log(LogLevel.INFO, "Generated %s", relativePathAndFile);

            } finally {
                IOUtils.closeQuietly(zos);
            }
            
            if (deleteOnComplete) {
                for (String fileName : fileNames) {
                    File file = new File(fileName);
                    FileUtils.deleteQuietly(file);
                }
            }            
        }
    }

}
