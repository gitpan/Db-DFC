import com.documentum.fc.client.*;

public class dm_Caster {

    public IDfSysObject castToIDfSysObject(Object source) {
        return (IDfSysObject)source;    
    }
    
    public IDfDocument castToIDfDocument(Object source) {
        return (IDfDocument)source;    
    }

    public IDfFolder castToIDfFolder(Object source) {
        return (IDfFolder)source;    
    }

    public IDfPersistentObject castToIDfPersistentObject(Object source) {
        return (IDfPersistentObject)source;    
    }
        
}    

    