package org.ftd.educational.revisao.json.results;

import java.io.Serializable;

/**
 *
 * @author Fabio Tavares Dippold
 * 
 */
public class Error implements Serializable {
    private static final long serialVersionUID = -1970284650516193381L;
    
    private String code;
    private String description;

    public Error(String code, String description) {
        setCode(code);
        setDescription(description);
    }
    
    public String getCode() {
        return code;
    }

    public final void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public final void setDescription(String description) {
        this.description = description;
    }
    
    
    
}
