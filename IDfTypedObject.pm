# ------------------------------------------------------------------- #
# IDfTypedObject
# com.documentum.fc.client.IDfTypedObject
# ------------------------------------------------------------------- #
package IDfTypedObject;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfTypedObject';
use JPL::Class 'com::documentum::fc::common::IDfAttr';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfTime';
use JPL::Class 'com::documentum::fc::common::IDfValue';

sub appendBoolean {
    my ($self,$attr,$val) = @_;
    my $appendBoolean = JPL::AutoLoader::getmeth('appendBoolean',
                                            ['java.lang.String',
                                             'boolean'],
                                            []
                                           );
    return $$self->$appendBoolean($attr,$val);                                           
}

sub appendDouble {
    my ($self,$attr,$val) = @_;
    my $appendDouble = JPL::AutoLoader::getmeth('appendDouble',
                                            ['java.lang.String',
                                             'double'],
                                            []
                                           );
    return $$self->$appendDouble($attr,$val);                                           
}

sub appendId {
    my ($self,$attr,$val) = @_;
    my $appendId = JPL::AutoLoader::getmeth('appendId',
                                            ['java.lang.String',
                                             'com.documentum.fc.common.IDfId'],
                                            []
                                           );
    return $$self->$appendId($attr,$$val);                                           
}

sub appendInt {
    my ($self,$attr,$val) = @_;
    my $appendInt = JPL::AutoLoader::getmeth('appendInt',
                                            ['java.lang.String',
                                             'int'],
                                            []
                                           );
    return $$self->$appendInt($attr,$val);                                           
}

sub appendString {
    my ($self,$attr,$val) = @_;
    my $appendString = JPL::AutoLoader::getmeth('appendString',
                                            ['java.lang.String',
                                             'java.lang.String'],
                                            []
                                           );
    return $$self->$appendString($attr,$val);                                           
}

sub appendTime {
    my ($self,$attr,$val) = @_;
    my $appendTime = JPL::AutoLoader::getmeth('appendTime',
                                            ['java.lang.String',
                                             'com.documentum.fc.common.IDfTime'],
                                            []
                                           );
    return $$self->$appendTime($attr,$$val);                                           
}

sub appendValue {
    my ($self,$attr,$val) = @_;
    my $appendValue = JPL::AutoLoader::getmeth('appendValue',
                                            ['java.lang.String',
                                             'com.documentum.fc.common.IDfValue'],
                                            []
                                           );
    return $$self->$appendValue($attr,$$val);                                           
}

sub dump {
    my $self = shift;
    my $dump = JPL::AutoLoader::getmeth('dump',
                                        [], 
                                        ['java.lang.String']
                                       );
    return $$self->$dump();                                       
}

sub enumAttrs {
    my $self = shift;
    my $enumAttrs = JPL::AutoLoader::getmeth('enumAttrs',
                                        [], 
                                        ['java.util.Enumeration']
                                       );
    return $$self->$enumAttrs();
}

sub findAttrIndex {
    my ($self,$attr) = @_;
    my $findAttrIndex = JPL::AutoLoader::getmeth('findAttrIndex',
                                        ['java.lang.String'], 
                                        ['int']
                                       );
    return $$self->$findAttrIndex($attr);
}    

sub findBoolean {
    my ($self,$attr,$val) = @_;
    my $findBoolean = JPL::AutoLoader::getmeth('findBoolean',
                                        ['java.lang.String',
                                         'boolean'], 
                                        ['int']
                                       );
    return $$self->$findBoolean($attr,$val);
}  

sub findDouble {
    my ($self,$attr,$val) = @_;
    my $findDouble = JPL::AutoLoader::getmeth('findDouble',
                                        ['java.lang.String',
                                         'double'], 
                                        ['int']
                                       );
    return $$self->$findDouble($attr,$val);
}  

sub findId {
    my ($self,$attr,$val) = @_;
    my $findId = JPL::AutoLoader::getmeth('findId',
                                            ['java.lang.String',
                                             'com.documentum.fc.common.IDfId'],
                                            ['int']
                                           );
    return $$self->$findId($attr,$$val);                                           
}

sub findInt {
    my ($self,$attr,$val) = @_;
    my $findInt = JPL::AutoLoader::getmeth('findInt',
                                        ['java.lang.String',
                                         'int'], 
                                        ['int']
                                       );
    return $$self->$findInt($attr,$val);
} 

sub findString {
    my ($self,$attr,$val) = @_;
    my $findString = JPL::AutoLoader::getmeth('findString',
                                        ['java.lang.String',
                                         'java.lang.String'], 
                                        ['int']
                                       );
    return $$self->$findString($attr,$val);
} 

sub findTime {
    my ($self,$attr,$val) = @_;
    my $findTime = JPL::AutoLoader::getmeth('findTime',
                                            ['java.lang.String',
                                             'com.documentum.fc.common.IDfTime'],
                                            ['int']
                                           );
    return $$self->$findTime($attr,$$val);                                           
}

sub findValue {
    my ($self,$attr,$val) = @_;
    my $findValue = JPL::AutoLoader::getmeth('findValue',
                                            ['java.lang.String',
                                             'com.documentum.fc.common.IDfValue'],
                                            ['int']
                                           );
    return $$self->$findValue($attr,$$val);                                           
}

sub getAllRepeatingStrings {
    my ($self,$attr,$sep) = @_;
    my $getAllRepeatingStrings = JPL::AutoLoader::getmeth('getAllRepeatingStrings',
                                            ['java.lang.String',
                                             'java.lang.String'],
                                            ['java.lang.String']
                                           );
    return $$self->$getAllRepeatingStrings($attr,$sep);      
}

sub getAttr {
    my ($self,$idx) = @_;
    my $getAttr = JPL::AutoLoader::getmeth('getAttr',
                                           ['int'],
                                           ['com.documentum.fc.common.IDfAttr']
                                          );
    my $attr = $$self->$getAttr($idx);
    if ($attr) {
        bless (\$attr,IDfAttr);
        return \$attr;
    } else {
        return undef;
    }        
}

sub getAttrCount {
    my $self = shift;
    my $getAttrCount = JPL::AutoLoader::getmeth('getAttrCount',
                                                [],
                                                ['int']
                                               );
    return $$self->$getAttrCount();
}

sub getAttrDataType {
    my ($self,$attr) = @_;
    my $getAttrDataType = JPL::AutoLoader::getmeth('getAttrDataType',
                                                ['java.lang.String'],
                                                ['int']
                                               );
    return $$self->$getAttrDataType($attr);
}        

sub getBoolean {
    my ($self,$attr) = @_;
    my $getBoolean = JPL::AutoLoader::getmeth('getBoolean',
                                                ['java.lang.String'],
                                                ['boolean']
                                               );
    return $$self->$getBoolean($attr);
}        
    
sub getDouble {
    my ($self,$attr) = @_;
    my $getDouble = JPL::AutoLoader::getmeth('getDouble',
                                                ['java.lang.String'],
                                                ['double']
                                               );
    return $$self->$getDouble($attr);
}        
   
sub getId {
    my ($self,$attr) = @_;
    my $getId = JPL::AutoLoader::getmeth('getId',
                                                ['java.lang.String'],
                                                ['com.documentum.fc.common.IDfId']
                                               );
    my $id = $$self->$getId($attr);
    if ($id) {
        bless (\$id,IDfId);                  
        return \$id;
    } else {
        return undef;
    }   
}        
 
sub getInt {
    my ($self,$attr) = @_;
    my $getInt = JPL::AutoLoader::getmeth('getInt',
                                                ['java.lang.String'],
                                                ['int']
                                               );
    return $$self->$getInt($attr);
} 

sub getObjectId {
    my $self = shift;
    my $getObjectId = JPL::AutoLoader::getmeth('getObjectId',
                                                [],
                                                ['com.documentum.fc.common.IDfId']
                                               );
    my $id = $$self->$getObjectId();
    if ($id) {
        bless (\$id,IDfId);                  
        return \$id;
    } else {
        return undef;
    }   
}  

sub getRepeatingBoolean {
    my ($self,$attr,$idx) = @_;
    my $getRepeatingBoolean = JPL::AutoLoader::getmeth('getRepeatingBoolean',
                                                ['java.lang.String',
                                                 'int'],
                                                ['boolean']
                                               );
    return $$self->$getRepeatingBoolean($attr,$idx);
}     

sub getRepeatingDouble {
    my ($self,$attr,$idx) = @_;
    my $getRepeatingDouble = JPL::AutoLoader::getmeth('getRepeatingDouble',
                                                ['java.lang.String',
                                                 'int'],
                                                ['double']
                                               );
    return $$self->$getRepeatingDouble($attr,$idx);
}     

sub getRepeatingId {
    my ($self,$attr,$idx) = @_;
    my $getRepeatingId = JPL::AutoLoader::getmeth('getRepeatingId',
                                                ['java.lang.String',
                                                 'int'],
                                                ['com.documentum.fc.common.IDfId']
                                               );
    my $id = $$self->$getRepeatingId($attr,$idx);
    if ($id) {
        bless (\$id,IDfId);                  
        return \$id;
    } else {
        return undef;
    }   
}     

sub getRepeatingInt {
    my ($self,$attr,$idx) = @_;
    my $getRepeatingInt = JPL::AutoLoader::getmeth('getRepeatingInt',
                                                ['java.lang.String',
                                                 'int'],
                                                ['int']
                                               );
    return $$self->$getRepeatingInt($attr,$idx);
}     

sub getRepeatingString {
    my ($self,$attr,$idx) = @_;
    my $getRepeatingString = JPL::AutoLoader::getmeth('getRepeatingString',
                                                ['java.lang.String',
                                                 'int'],
                                                ['java.lang.String']
                                               );
    return $$self->$getRepeatingString($attr,$idx);
}     

sub getRepeatingTime {
    my ($self,$attr,$idx) = @_;
    my $getRepeatingTime = JPL::AutoLoader::getmeth('getRepeatingTime',
                                                ['java.lang.String',
                                                 'int'],
                                                ['com.documentum.fc.common.IDfTime']
                                               );
    my $time = $$self->$getRepeatingTime($attr,$idx);
    if ($time) {
        bless (\$time,IDfTime);                  
        return \$time;
    } else {
        return undef;
    }   
}     

sub getRepeatingValue {
    my ($self,$attr,$idx) = @_;
    my $getRepeatingValue = JPL::AutoLoader::getmeth('getRepeatingValue',
                                                ['java.lang.String',
                                                 'int'],
                                                ['com.documentum.fc.common.IDfValue']
                                               );
    my $val = $$self->$getRepeatingValue($attr,$idx);
    if ($val) {
        bless (\$val,IDfValue);                  
        return \$val;
    } else {
        return undef;
    }   
}     

sub getSession {
    my $self = shift;
    my $getSession = JPL::AutoLoader::getmeth('getSession',
                                            [],
                                            ['com.documentum.fc.client.IDfSession']
                                           );
    my $session = $$self->$getSession();
    if ($session) {
        bless (\$session,IDfSession);                  
        return \$session;
    } else {
        return undef;
    }   
}                                               

sub getString {
    my ($self,$attr) = @_;
    my $getString = JPL::AutoLoader::getmeth('getString',
                                            ['java.lang.String'],
                                            ['java.lang.String']
                                           );
    return $$self->$getString($attr);
}                                               

sub getTime {
    my ($self,$attr) = @_;
    my $getTime = JPL::AutoLoader::getmeth('getTime',
                                           ['java.lang.String'],
                                           ['com.documentum.fc.common.IDfTime']
                                          );
    my $time = $$self->$getTime($attr);
    if ($time) {
        bless (\$time,IDfTime);                  
        return \$time;
    } else {
        return undef;
    }   
}     

sub getValue {
    my ($self,$attr) = @_;
    my $getValue = JPL::AutoLoader::getmeth('getValue',
                                           ['java.lang.String'],
                                           ['com.documentum.fc.common.IDfValue']
                                           );
    my $val = $$self->$getValue($attr);                                       
    if ($val) {
        bless (\$val,IDfValue);                  
        return \$val;
    } else {
        return undef;
    }   
}     

sub getValueAt {
    my ($self,$idx) = @_;
    my $getValue = JPL::AutoLoader::getmeth('getValueAt',
                                           ['int'],
                                           ['com.documentum.fc.common.IDfValue']
                                           );
    my $val = $$self->$getValueAt($idx);                                       
    if ($val) {
        bless (\$val,IDfValue);                  
        return \$val;
    } else {
        return undef;
    }  
}     

sub getValueCount {
    my ($self,$attr) = @_;
    my $getValueCount = JPL::AutoLoader::getmeth('getValueCount',
                                           ['java.lang.String'],
                                           ['int']
                                           );
    return $$self->$getValueCount($attr);
}     

sub hasAttr {
    my ($self,$attr) = @_;
    my $hasAttr = JPL::AutoLoader::getmeth('hasAttr',
                                           ['java.lang.String'],
                                           ['boolean']
                                           );
    return $$self->$hasAttr($attr);
}  

sub insertBoolean {
    my ($self,$attr,$idx,$val) = @_;
    my $insertBoolean = JPL::AutoLoader::getmeth('insertBoolean',
                                           ['java.lang.String',
                                            'int',
                                            'boolean'],
                                           []
                                           );
    return $$self->$insertBoolean($attr,$idx,$val);
}  

sub insertDouble {
    my ($self,$attr,$idx,$val) = @_;
    my $insertDouble = JPL::AutoLoader::getmeth('insertDouble',
                                           ['java.lang.String',
                                            'int',
                                            'double'],
                                           []
                                           );
    return $$self->$insertDouble($attr,$idx,$val);
}  

sub insertId {
    my ($self,$attr,$idx,$val) = @_;
    my $insertId = JPL::AutoLoader::getmeth('insertId',
                                           ['java.lang.String',
                                            'int',
                                            'com.documentum.fc.common.IDfId'],
                                           []
                                           );
    return $$self->$insertId($attr,$idx,$$val);
}  

sub insertInt {
    my ($self,$attr,$idx,$val) = @_;
    my $insertInt = JPL::AutoLoader::getmeth('insertInt',
                                           ['java.lang.String',
                                            'int',
                                            'int'],
                                           []
                                           );
    return $$self->$insertInt($attr,$idx,$val);
}  

sub insertString {
    my ($self,$attr,$idx,$val) = @_;
    my $insertString = JPL::AutoLoader::getmeth('insertString',
                                           ['java.lang.String',
                                            'int',
                                            'java.lang.String'],
                                           []
                                           );
    return $$self->$insertString($attr,$idx,$val);
}  

sub insertTime {
    my ($self,$attr,$idx,$val) = @_;
    my $insertTime = JPL::AutoLoader::getmeth('insertTime',
                                           ['java.lang.String',
                                            'int',
                                            'com.documentum.fc.common.IDfTime'],
                                           []
                                           );
    return $$self->$insertTime($attr,$idx,$$val);
}  

sub insertValue {
    my ($self,$attr,$idx,$val) = @_;
    my $insertValue = JPL::AutoLoader::getmeth('insertValue',
                                           ['java.lang.String',
                                            'int',
                                            'com.documentum.fc.common.IDfValue'],
                                           []
                                           );
    return $$self->$insertValue($attr,$idx,$$val);
}  

sub isAttrRepeating {
    my ($self,$attr) = @_;
    my $isAttrRepeating = JPL::AutoLoader::getmeth('isAttrRepeating',
                                           ['java.lang.String'],
                                           ['boolean']
                                           );
    return $$self->$isAttrRepeating($attr);
}  

sub remove {
    my ($self,$attr,$idx) = @_;
    my $remove = JPL::AutoLoader::getmeth('remove',
                                           ['java.lang.String',
                                            'int'],
                                           []
                                          );
    return $$self->$remove($attr,$idx);
}  

sub removeAll {
    my ($self,$attr) = @_;
    my $removeAll = JPL::AutoLoader::getmeth('removeAll',
                                           ['java.lang.String'],
                                           []
                                          );
    return $$self->$removeAll($attr);
}  

sub setBoolean {
    my ($self,$attr,$val) = @_;
    my $setBoolean = JPL::AutoLoader::getmeth('setBoolean',
                                           ['java.lang.String',
                                            'boolean'],
                                           []
                                          );
    return $$self->$setBoolean($attr,$val);
}  

sub setDouble {
    my ($self,$attr,$val) = @_;
    my $setDouble = JPL::AutoLoader::getmeth('setDouble',
                                           ['java.lang.String',
                                            'double'],
                                           []
                                          );
    return $$self->$setDouble($attr,$val);
}  

sub setId {
    my ($self,$attr,$val) = @_;
    my $setId = JPL::AutoLoader::getmeth('setId',
                                           ['java.lang.String',
                                            'com.documentum.fc.common.IDfId'],
                                           []
                                          );
    return $$self->$setId($attr,$$val);
}  

sub setInt {
    my ($self,$attr,$val) = @_;
    my $setInt = JPL::AutoLoader::getmeth('setInt',
                                           ['java.lang.String',
                                            'int'],
                                           []
                                          );
    return $$self->$setInt($attr,$val);
}  

sub setRepeatingBoolean {
    my ($self,$attr,$idx,$val) = @_;
    my $setRepeatingBoolean = JPL::AutoLoader::getmeth('setRepeatingBoolean',
                                           ['java.lang.String',
                                            'int',
                                            'boolean'],
                                           []
                                          );
    return $$self->$setRepeatingBoolean($attr,$idx,$val);
}  

sub setRepeatingDouble {
    my ($self,$attr,$idx,$val) = @_;
    my $setRepeatingDouble = JPL::AutoLoader::getmeth('setRepeatingDouble',
                                           ['java.lang.String',
                                            'int',
                                            'double'],
                                           []
                                          );
    return $$self->$setRepeatingDouble($attr,$idx,$val);
}  

sub setRepeatingId {
    my ($self,$attr,$idx,$val) = @_;
    my $setRepeatingId = JPL::AutoLoader::getmeth('setRepeatingId',
                                           ['java.lang.String',
                                            'int',
                                            'com.documentum.fc.common.IDfId'],
                                           []
                                          );
    return $$self->$setRepeatingId($attr,$idx,$$val);
}  

sub setRepeatingInt {
    my ($self,$attr,$idx,$val) = @_;
    my $setRepeatingInt = JPL::AutoLoader::getmeth('setRepeatingInt',
                                           ['java.lang.String',
                                            'int',
                                            'int'],
                                           []
                                          );
    return $$self->$setRepeatingInt($attr,$idx,$val);
}  

sub setRepeatingString {
    my ($self,$attr,$idx,$val) = @_;
    my $setRepeatingString = JPL::AutoLoader::getmeth('setRepeatingString',
                                           ['java.lang.String',
                                            'int',
                                            'java.lang.String'],
                                           []
                                          );
    return $$self->$setRepeatingString($attr,$idx,$val);
}  

sub setRepeatingTime {
    my ($self,$attr,$idx,$val) = @_;
    my $setRepeatingTime = JPL::AutoLoader::getmeth('setRepeatingTime',
                                           ['java.lang.String',
                                            'int',
                                            'com.documentum.fc.common.IDfTime'],
                                           []
                                          );
    return $$self->$setRepeatingTime($attr,$idx,$$val);
}  

sub setRepeatingValue {
    my ($self,$attr,$idx,$val) = @_;
    my $setRepeatingValue = JPL::AutoLoader::getmeth('setRepeatingValue',
                                           ['java.lang.String',
                                            'int',
                                            'com.documentum.fc.common.IDfValue'],
                                           []
                                          );
    return $$self->$setRepeatingValue($attr,$idx,$$val);
}  

sub setString {
    my ($self,$attr,$val) = @_;
    my $setString = JPL::AutoLoader::getmeth('setString',
                                             ['java.lang.String',
                                              'java.lang.String'],
                                             []
                                            );
    return $$self->$setString($attr,$val);
}

sub setTime {
    my ($self,$attr,$val) = @_;
    my $setTime = JPL::AutoLoader::getmeth('setTime',
                                           ['java.lang.String',
                                            'com.documentum.fc.common.IDfTime'],
                                           []
                                          );
    return $$self->$setTime($attr,$$val);
}  

sub setValue {
    my ($self,$attr,$val) = @_;
    my $setValue = JPL::AutoLoader::getmeth('setValue',
                                           ['java.lang.String',
                                            'com.documentum.fc.common.IDfValue'],
                                           []
                                          );
    return $$self->$setValue($attr,$$val);
}  

sub truncate {
    my ($self,$attr,$idx) = @_;
    my $truncate = JPL::AutoLoader::getmeth('truncate',
                                           ['java.lang.String',
                                            'int'],
                                           []
                                          );
    return $$self->$truncate($attr,$idx);
}  


1;
#__EOF__    