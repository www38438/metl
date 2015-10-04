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
package org.jumpmind.metl.ui.views.admin;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang.StringUtils;
import org.jumpmind.metl.core.model.Group;
import org.jumpmind.metl.core.model.User;
import org.jumpmind.metl.core.model.UserGroup;
import org.jumpmind.metl.ui.common.ApplicationContext;
import org.jumpmind.symmetric.ui.common.IUiPanel;

import com.vaadin.data.Property.ValueChangeEvent;
import com.vaadin.data.Property.ValueChangeListener;
import com.vaadin.ui.FormLayout;
import com.vaadin.ui.PasswordField;
import com.vaadin.ui.TextField;
import com.vaadin.ui.TwinColSelect;
import com.vaadin.ui.VerticalLayout;

@SuppressWarnings("serial")

public class UserEditPanel extends VerticalLayout implements IUiPanel {

    protected static final String NOCHANGE = "******";

    ApplicationContext context;
    
    User user;
    
    Map<String, Group> groupsById;
    
    Set<String> lastGroups;
    
    public UserEditPanel(ApplicationContext context, User user) {
        this.context = context;
        this.user = user;
        
        FormLayout form = new FormLayout();
        form.setSpacing(true);

        TextField loginField = new TextField("Login ID", StringUtils.trimToEmpty(user.getLoginId()));
        form.addComponent(loginField);
        loginField.addValueChangeListener(new LoginChangeListener());
        loginField.focus();

        TextField nameField = new TextField("Full Name", StringUtils.trimToEmpty(user.getName()));
        nameField.addValueChangeListener(new NameChangeListener());
        form.addComponent(nameField);

        PasswordField passwordField = new PasswordField("Password", NOCHANGE);
        passwordField.addValueChangeListener(new PasswordChangeListener());
        form.addComponent(passwordField);

        List<Group> groups = context.getConfigurationService().findGroups();
        groupsById = new HashMap<String, Group>();
        TwinColSelect groupSelect = new TwinColSelect();
        for (Group group : groups) {
            groupSelect.addItem(group.getId());
            groupSelect.setItemCaption(group.getId(), group.getName());
            groupsById.put(group.getId(), group);
        }
        lastGroups = new HashSet<String>();
        for (Group group : user.getGroups()) {
            lastGroups.add(group.getId());
        }
        groupSelect.setValue(lastGroups);
        groupSelect.setRows(20);
        groupSelect.setNullSelectionAllowed(true);
        groupSelect.setMultiSelect(true);
        groupSelect.setImmediate(true);
        groupSelect.setLeftColumnCaption("Available groups");
        groupSelect.setRightColumnCaption("Selected groups");
        groupSelect.addValueChangeListener(new GroupChangeListener());
        form.addComponent(groupSelect);
        
        addComponent(form);
        setMargin(true);
    }
    
    @Override
    public boolean closing() {
        return true;
    }

    @Override
    public void deselected() {
    }

    @Override
    public void selected() {
    }

    class NameChangeListener implements ValueChangeListener {
        public void valueChange(ValueChangeEvent event) {
            user.setName((String) event.getProperty().getValue());
            context.getConfigurationService().save(user);            
        }
    }

    class LoginChangeListener implements ValueChangeListener {
        public void valueChange(ValueChangeEvent event) {
            user.setLoginId((String) event.getProperty().getValue());
            context.getConfigurationService().save(user);            
        }
    }

    class PasswordChangeListener implements ValueChangeListener {
        public void valueChange(ValueChangeEvent event) {
            user.setPassword(User.hashValue((String) event.getProperty().getValue()));   
            context.getConfigurationService().save(user);            
        }
    }

    class GroupChangeListener implements ValueChangeListener {
        @SuppressWarnings("unchecked")
        public void valueChange(ValueChangeEvent event) {
            Set<String> groups = (Set<String>) event.getProperty().getValue();

            for (String id : groups) {
                if (!lastGroups.contains(id)) {
                    UserGroup userGroup = new UserGroup(user.getId(), id);
                    user.getGroups().add(groupsById.get(id));
                    context.getConfigurationService().save(userGroup);
                }
            }

            for (String id : lastGroups) {
                if (!groups.contains(id)) {
                    user.getGroups().remove(groupsById.get(id));
                    context.getConfigurationService().delete(new UserGroup(user.getId(), id));
                }
            }

            lastGroups = new HashSet<String>(groups);
        }        
    }

}
