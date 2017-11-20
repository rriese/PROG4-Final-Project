package org.ftd.educational.revisao.web.adapters;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.0 - 2017-11-20
 * 
 */
public class MenuItem {
    private String group;
    private String name;
    private String url;
    
    public MenuItem(String group, String name, String url) {
        setGroup(group);
        setName(name);
        setUrl(url);
    }

    public String getGroup() {
        return group;
    }

    public final void setGroup(String group) {
        this.group = group;
    }

    public String getName() {
        return name;
    }

    public final void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public final void setUrl(String url) {
        this.url = url;
    }
        
    
}
