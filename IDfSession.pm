# ------------------------------------------------------------------- #
# IDfSession
# com.documentum.fc.client.IDfSession
# ------------------------------------------------------------------- #
package IDfSession;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfSession';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfList';
use JPL::Class 'com::documentum::fc::client::IDfPersistentObject';
use JPL::Class 'com::documentum::fc::client::IDfType';
use JPL::Class 'com::documentum::fc::client::IDfCollection';
use JPL::Class 'com::documentum::fc::common::IDfTime';
use JPL::Class 'com::documentum::fc::client::IDfACL';
use JPL::Class 'com::documentum::fc::client::IDfClient';
use JPL::Class 'com::documentum::fc::client::IDfFolder';
use JPL::Class 'com::documentum::fc::client::IDfFormat';
use JPL::Class 'com::documentum::fc::client::IDfGroup';
use JPL::Class 'com::documentum::fc::client::IDfTypedObject';
use JPL::Class 'com::documentum::fc::client::IDfUser';
use JPL::Class 'com::documentum::fc::client::IDfVersionTreeLabels';


#sub new {
#    my $new = JPL::AutoLoader::getmeth('new',[],[]);
#    my $self = com::documentum::fc::client::DfSession->new();
#    bless (\$self,IDfSession);
#    return \$self;
#}

sub abortTrans {
    my $self = shift;
    my $abortTrans = JPL::AutoLoader::getmeth('abortTrans',
                                           [],
                                           []
                                          );
    return $$self->$abortTrans();
}

sub apiDesc {
    my ($self,$cmd) = @_;
    my $apiDesc = JPL::AutoLoader::getmeth('apiDesc',
                                           ['java.lang.String'],
                                           ['com.documentum.fc.common.IDfList']
                                          );
    return $$self->$apiDesc($cmd);
}

sub apiExec {
    my ($self,$cmd,$args) = @_;
    my $apiExec = JPL::AutoLoader::getmeth('apiExec',
                                           ['java.lang.String','java.lang.String'],
                                           ['boolean']
                                          );
    return $$self->$apiExec($cmd,$args);
}

sub apiGet {
    my ($self,$cmd,$args) = @_;
    my $apiGet = JPL::AutoLoader::getmeth('apiGet',
                                           ['java.lang.String','java.lang.String'],
                                           ['java.lang.String']
                                          );
    return $$self->$apiGet($cmd,$args);
}

sub apiGetBytes {
    my ($self,$cmd,$args,$buf,$buflen,$len) = @_;
    my $apiGetBytes = JPL::AutoLoader::getmeth('apiGetBytes',
                                           ['java.lang.String',
                                            'java.lang.String',
                                            'java.lang.String',
                                            'java.lang.String',
                                            'int'],
                                           ['java.io.ByteArrayInputStream']
                                          );
    return $$self->$apiGetBytes($cmd,$args,$buf,$buflen,$len);
}

sub apiSet {
    my ($self,$cmd,$args,$vals) = @_;
    my $apiSet = JPL::AutoLoader::getmeth('apiSet',
                                           ['java.lang.String','java.lang.String',
                                            'java.lang.String'],
                                           ['boolean']
                                          );
    return $$self->$apiSet($cmd,$args,$vals);
}

sub apiSetBytes {
    my ($self,$cmd,$args,$content) = @_;
    my $apiSetBytes = JPL::AutoLoader::getmeth('apiSetBytes',
                                           ['java.lang.String',
                                            'java.lang.String',
                                            'java.io.ByteArrayOutpuStream'],
                                           ['boolean']
                                          );
    return $$self->$apiSetBytes($cmd,$args,$content);
}

sub apply {
    my ($self,$objid,$funcname,$args, $datatype,$vals) = @_;
    my $apply = JPL::AutoLoader::getmeth('apply',
                                           ['java.lang.String',
                                            'java.lang.String',
                                            'com.documentum.fc.common.IDfList',
                                            'com.documentum.fc.common.IDfList',
                                            'com.documentum.fc.common.IDfList'],
                                           ['com.documentum.fc.client.IDfCollection']
                                          );
    my $col = $$self->$apply($objid,$funcname,$$args,$$datatype,$$vals);
    if ($col) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub archive {
    my ($self,$predicate,$operatorname,$priority,$sendmail,$duedate) = @_;
    my $archive = JPL::AutoLoader::getmeth('archive',
                                           ['java.lang.String',
                                            'java.lang.String',
                                            'int',
                                            'boolean',
                                            'com.documentum.fc.common.IDfTime'],
                                           ['com.documentum.fc.common.IDfId']
                                          );
    my $id = $$self->$archive($predicate,$operatorname,$priority,$sendmail,$$duedate);
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub beginTrans {
    my $self = shift;
    my $beginTrans  = JPL::AutoLoader::getmeth('beginTrans',[],[]);
    return $$self->$beginTrans();
}

sub changePassword {
    my ($self,$oldpw,$newpw) = @_;
    my $changePassword  = JPL::AutoLoader::getmeth('changePassword',
                                                   ['java.lang.String',
                                                    'java.lang.String'],
                                                   []
                                                  );
    return $$self->$changePassword($oldpw,$newpw);
}

sub commitTrans {
    my $self = shift;
    my $commitTrans  = JPL::AutoLoader::getmeth('commitTrans',[],[]);
    return $$self->$commitTrans();
}

sub dequeue {
    my ($self,$id) = @_;
    my $dequeue  = JPL::AutoLoader::getmeth('dequeue',
                                            ['com.documentum.fc.common.IDfId'],
                                            []
                                           );
    return $$self->$dequeue($$id);
}

sub describe {
    my ($self,$type,$obj) = @_;
    my $describe  = JPL::AutoLoader::getmeth('describe',
                                            ['java.lang.String',
                                             'java.lang.String'],
                                            ['java.lang.String']
                                           );
    return $$self->$describe($type,$obj);
}

sub disconnect {
    my $self = shift;
    my $disconnect = JPL::AutoLoader::getmeth('disconnect',[],[]);
    return $$self->$disconnect();
}

sub flush {
    my ($self,$flushtype,$cachekey) = @_;
    my $flush  = JPL::AutoLoader::getmeth('flush',
                                            ['java.lang.String',
                                             'java.lang.String'],
                                            []
                                           );
    return $$self->$flush($flushtype,$cachekey);
}

sub flushCache {
    my ($self,$discard) = @_;
    my $flushCache   = JPL::AutoLoader::getmeth('flushCache',
                                            ['boolean'],
                                            []
                                           );
    return $$self->$flushCache($discard);
}

sub getACL {
    my ($self,$domain,$name) = @_;
    my $getACL   = JPL::AutoLoader::getmeth('getACL',
                                            ['java.lang.String',
                                             'java.lang.String'],
                                            ['com.documentum.fc.client.IDfACL']
                                           );
    my $acl = $$self->$getACL($domain,$name);
    if ($acl) {
        bless (\$acl,IDfACL);
        return \$acl;
    } else {
        return undef;
    }
}

sub getClient {
    my $self = shift;
    my $getClient   = JPL::AutoLoader::getmeth('getClient',
                                            [],
                                            ['com.documentum.fc.client.IDfClient']
                                           );
    my $client = $$self->$getClient();
    if ($client) {
        bless (\$client,IDfClient);
        return \$client;
    } else {
        return undef;
    }
}

sub getClientConfig {
    my $self = shift;
    my $getClientConfig = JPL::AutoLoader::getmeth('getClientConfig',
                                              [],
                                              ['com.documentum.fc.client.IDfTypedObject']
                                             );
    my $config = $$self->$getClientConfig();
    if ($config) {
        bless(\$config,IDfTypedObject);
        return \$config
    } else {
        return undef;
    }
}

sub getConnectionConfig {
    my $self = shift;
    my $getConnectionConfig = JPL::AutoLoader::getmeth('getConnectionConfig',
                                              [],
                                              ['com.documentum.fc.client.IDfTypedObject']
                                             );
    my $config = $$self->$getConnectionConfig();
    if ($config) {
        bless(\$config,IDfTypedObject);
        return \$config
    } else {
        return undef;
    }
}

sub getDBMSName {
    my $self = shift;
    my $getDBMSName = JPL::AutoLoader::getmeth('getDBMSName',[],['java.lang.String']);
    return $$self->$getDBMSName();
}

sub getDefaultACL {
    my $self = shift;
    my $getDefaultACL = JPL::AutoLoader::getmeth('getDefaultACL',
                                               [],
                                               ['int']
                                              );
    return $$self->$getDefaultACL();
}

sub getDMCLSessionId {
    my $self = shift;
    my $getDMCLSessionId = JPL::AutoLoader::getmeth('getDMCLSessionId',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getDMCLSessionId();
}

sub getDocbaseConfig {
    my $self = shift;
    my $getDocbaseConfig = JPL::AutoLoader::getmeth('getDocbaseConfig',
                                              [],
                                              ['com.documentum.fc.client.IDfTypedObject']
                                             );
    my $config = $$self->$getDocbaseConfig();
    if ($config) {
        bless(\$config,IDfTypedObject);
        return \$config
    } else {
        return undef;
    }
}

sub getDocbaseId {
    my $self = shift;
    my $getDocbaseId = JPL::AutoLoader::getmeth('getDocbaseId',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getDocbaseId();
}

sub getDocbaseName {
    my $self = shift;
    my $getDocbaseName = JPL::AutoLoader::getmeth('getDocbaseName',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getDocbaseName();
}

sub getDocbaseOwnerName {
    my $self = shift;
    my $getDocbaseOwnerName = JPL::AutoLoader::getmeth('getDocbaseOwnerName',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getDocbaseOwnerName();
}

sub getDocbaseScope {
    my $self = shift;
    my $getDocbaseScope = JPL::AutoLoader::getmeth('getDocbaseScope',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getDocbaseScope();
}

sub getDocbrokerMap {
    my $self = shift;
    my $getDocbrokerMap = JPL::AutoLoader::getmeth('getDocbrokerMap',
                                              [],
                                              ['com.documentum.fc.client.IDfTypedObject']
                                             );
    my $docmap = $$self->$getDocbrokerMap();
    if ($docmap) {
        bless(\$docmap,IDfTypedObject);
        return \$docmap
    } else {
        return undef;
    }
}

sub getEvents {
    my $self = shift;
    my $getEvents = JPL::AutoLoader::getmeth('getEvents',
                                           [],
                                           ['com.documentum.fc.client.IDfCollection']
                                          );
    my $col = $$self->$getEvents();
    if ($col) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getFolderByPath {
    my ($self,$path) = @_;
    my $getFolderByPath = JPL::AutoLoader::getmeth('getFolderByPath',
                                           ['java.lang.String'],
                                           ['com.documentum.fc.client.IDfFolder']
                                          );
    my $folder = $$self->$getFolderByPath($path);
    if ($folder) {
        bless (\$folder,IDfFolder);
        return \$folder;
    } else {
        return undef;
    }
}

sub getFormat {
    my ($self,$formatname) = @_;
    my $getFormat = JPL::AutoLoader::getmeth('getFormat',
                                           ['java.lang.String'],
                                           ['com.documentum.fc.client.IDfFormat']
                                          );
    my $fmt = $$self->$getFormat($formatname);
    if ($fmt) {
        bless (\$fmt,IDfFormat);
        return \$fmt;
    } else {
        return undef;
    }
}

sub getGroup {
    my ($self,$grpname) = @_;
    my $getGroup = JPL::AutoLoader::getmeth('getGroup',
                                           ['java.lang.String'],
                                           ['com.documentum.fc.client.IDfGroup']
                                          );
    my $grp = $$self->$getGroup($grpname);
    if ($grp) {
        bless (\$grp,IDfGroup);
        return \$grp;
    } else {
        return undef;
    }
}

sub getIdByQualification {
    my ($self,$dql) = @_;
    my $getIdByQualification = JPL::AutoLoader::getmeth('getIdByQualification',
                                             ['java.lang.String'],
                                             ['com.documentum.fc.client.IDfId']
                                            );
    my $id = $$self->$getIdByQualification($dql);
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub getLastCollection {
    my $self = shift;
    my $getLastCollection = JPL::AutoLoader::getmeth('getLastCollection',
                                             [],
                                             ['com.documentum.fc.client.IDfCollection']
                                            );
    my $col = $$self->$getLastCollection();
    if ($col) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getLoginInfo {
    my $self = shift;
    my $getLoginInfo = JPL::AutoLoader::getmeth('getLoginInfo',
                                             [],
                                             ['com.documentum.fc.client.IDfLoginInfo']
                                            );
    my $ili = $$self->$getLoginInfo();
    if ($ili) {
        bless (\$ili,IDfLoginInfo);
        return \$ili;
    } else {
        return undef;
    }
}

sub getLoginTicket {
    my $self = shift;
    my $getLoginTicket = JPL::AutoLoader::getmeth('getLoginTicket',
                                             [],
                                             ['java.lang.String']
                                            );
    return $$self->$getLoginTicket();
}

sub getLoginUserName {
    my $self = shift;
    my $getLoginUserName = JPL::AutoLoader::getmeth('getLoginUserName',
                                             [],
                                             ['java.lang.String']
                                            );
    return $$self->$getLoginUserName();
}

sub getMessage {
    my ($self,$level) = @_;
    my $getMessage = JPL::AutoLoader::getmeth('getMessage',
                                             ['int'],
                                             ['java.lang.String']
                                            );
    return $$self->$getMessage($level);
}

sub getObject {
    my ($self,$idfid) = @_;
    my $getObject =  JPL::AutoLoader::getmeth('getObject',
                                             ['com.documentum.fc.client.IDfId'],
                                             ['com.documentum.fc.client.IDfPersistentObject']
                                            );
    my $obj = $$self->$getObject($$idfid);
    if ($obj) {
        bless (\$obj,IDfPersistentObject);
        return \$obj;
    } else {
        return undef;
    }
}

sub getObjectByPath {
    my ($self,$path) = @_;
    my $getObjectByPath = JPL::AutoLoader::getmeth('getObjectByPath',
                                             ['java.lang.String'],
                                             ['com.documentum.fc.client.IDfPersistentObject']
                                            );
    my $obj = $$self->$getObjectByPath($path);
    if ($obj) {
        bless(\$obj,IDfPersistentObject);
        return \$obj;
    } else {
        return undef;
    }
}

sub getObjectByQualification {
    my ($self,$dql) = @_;
    my $getObjectByQualification =  JPL::AutoLoader::getmeth('getObjectByQualification',
                                             ['java.lang.String'],
                                             ['com.documentum.fc.client.IDfPersistentObject']
                                            );
    my $obj = $$self->$getObjectByQualification($dql);
    if ($obj) {
        bless(\$obj,IDfPersistentObject);
        return \$obj;
    } else {
        return undef;
    }
}

sub getObjectWithType {
    my ($self,$objid,$objtype,$class) = @_;
    my $getObjectWithType =  JPL::AutoLoader::getmeth('getObjectWithType',
                                             ['com.documentum.fc.common.IDfId',
                                              'java.lang.String',
                                              'java.lang.String'],
                                             ['com.documentum.fc.client.IDfPersistentObject']
                                            );
    my $obj = $$self->$getObjectWithType($$objid,$objtype,$class);
    if ($obj) {
        bless(\$obj,IDfPersistentObject);
        return \$obj;
    } else {
        return undef;
    }
}

sub getRelationType {
    my ($self,$relname) = @_;
    my $getRelationType =  JPL::AutoLoader::getmeth('getRelationType',
                                             ['java.lang.String'],
                                             ['com.documentum.fc.client.IDfRelationType']
                                            );
    my $rt = $$self->$getRelationType($relname);
    if ($rt) {
        bless(\$rt,IDfRelationType);
        return \$rt;
    } else {
        return undef;
    }
}

sub getRunnableProcesses {
    my ($self,$attrs) = @_;
    my $getRunnableProcesses =  JPL::AutoLoader::getmeth('getRunnableProcesses',
                                             ['java.lang.String'],
                                             ['com.documentum.fc.client.IDfCollection']
                                            );
    my $col = $$self->$getRunnableProcesses($attrs);
    if ($col) {
        bless(\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getSecurityMode {
    my $self = shift;
    my $getSecurityMode =  JPL::AutoLoader::getmeth('getSecurityMode',
                                             [],
                                             ['java.lang.String']
                                            );
    return $$self->$getSecurityMode();
}

sub getServerConfig {
    my $self = shift;
    my $getServerConfig =  JPL::AutoLoader::getmeth('getServerConfig',
                                             [],
                                             ['com.documentum.fc.client.IDfTypedObject']
                                            );
    my $obj = $$self->$getServerConfig();
    if ($obj) {
        bless(\$obj,IDfTypedObject);
        return \$obj;
    } else {
        return undef;
    }
}

sub getServerMap {
    my ($self,$docbase) = @_;
    my $getServerMap =  JPL::AutoLoader::getmeth('getServerMap',
                                             ['java.lang.String'],
                                             ['com.documentum.fc.client.IDfTypedObject']
                                            );
    my $obj = $$self->$getServerMap($docbase);
    if ($obj) {
        bless(\$obj,IDfTypedObject);
        return \$obj;
    } else {
        return undef;
    }
}

sub getServerVersion {
    my $self = shift;
    my $getServerVersion =  JPL::AutoLoader::getmeth('getServerVersion',
                                             [],
                                             ['java.lang.String']
                                            );
    return $$self->$getServerVersion();
}

sub getSessionConfig {
    my $self = shift;
    my $getSessionConfig =  JPL::AutoLoader::getmeth('getSessionConfig',
                                             [],
                                             ['com.documentum.fc.client.IDfTypedObject']
                                            );
    my $obj = $$self->$getSessionConfig();
    if ($obj) {
        bless(\$obj,IDfTypedObject);
        return \$obj;
    } else {
        return undef;
    }
}

sub getSessionId {
    my $self = shift;
    my $getSessionId =  JPL::AutoLoader::getmeth('getSessionId',
                                             [],
                                             ['java.lang.String']
                                            );
    return $$self->$getSessionId();
}

sub getTasks {
    my ($self,$user,$filter,$attrs,$orderby) = @_;
    my $getTasks =  JPL::AutoLoader::getmeth('getTasks',
                                             ['java.lang.String',
                                              'int',
                                              'java.lang.String',
                                              'java.lang.String'],
                                             ['com.documentum.fc.client.IDfCollection']
                                            );
    my $col = $$self->$getTasks($self,$user,$filter,$attrs,$orderby);
    if ($col) {
        bless(\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getType {
    my ($self,$type) = @_;
    my $getType = JPL::AutoLoader::getmeth('getType',
                                             ['java.lang.String'],
                                             ['com.documentum.fc.client.IDfType']
                                            );
    my $idftype = $$self->$getType($type);
    if ($idftype) {
        bless(\$idftype,IDfType);
        return \$idftype;
    } else {
        return undef;
    }
}

sub getTypeDescription {
    my ($self,$typename,$attrs,$bpid,$state) = @_;
    my $getTypeDescription =  JPL::AutoLoader::getmeth('getTypeDescription',
                                             ['java.lang.String',
                                              'java.lang.String',
                                              'com.documentum.fc.common.IDfId',
                                              'java.lang.String'],
                                             ['com.documentum.fc.client.IDfTypedObject']
                                            );
    my $obj = $$self->$getTypeDescription($typename,$attrs,$$bpid,$state);
    if ($obj) {
        bless(\$obj,IDfTypedObject);
        return \$obj;
    } else {
        return undef;
    }
}

sub getUser {
    my ($self,$user) = @_;
    my $getUser =  JPL::AutoLoader::getmeth('getUser',
                                             ['java.lang.String'],
                                             ['com.documentum.fc.client.IDfUser']
                                            );
    my $iuser = $$self->$getUser($user);
    if ($iuser) {
        bless(\$iuser,IDfUser);
        return \$iuser;
    } else {
        return undef;
    }
}

sub getUserByOSName {
    my ($self,$user,$domain) = @_;
    my $getUserByOSName =  JPL::AutoLoader::getmeth('getUserByOSName',
                                             ['java.lang.String',
                                              'java.lang.String'],
                                             ['com.documentum.fc.client.IDfUser']
                                            );
    my $iuser = $$self->$getUserByOSName($user,$domain);
    if ($iuser) {
        bless(\$iuser,IDfUser);
        return \$iuser;
    } else {
        return undef;
    }
}

sub getVersionTreeLabels {
    my ($self,$cid) = @_;
    my $getVersionTreeLabels =  JPL::AutoLoader::getmeth('getVersionTreeLabels',
                                             ['com.documentum.fc.common.IDfId'],
                                             ['com.documentum.fc.client.IDfVersionTreeLabels']
                                            );
    my $labels = $$self->$getVersionTreeLabels($cid);
    if ($labels) {
        bless(\$labels,IDfVersionTreeLabels);
        return \$labels;
    } else {
        return undef;
    }
}

sub hasEvents {
    my $self = shift;
    my $hasEvents =  JPL::AutoLoader::getmeth('hasEvents',
                                             [],
                                             ['boolean']
                                            );
    return $$self->$hasEvents();
}

sub isACLDocbase {
    my $self = shift;
    my $isACLDocbase =  JPL::AutoLoader::getmeth('isACLDocbase',
                                             [],
                                             ['boolean']
                                            );
    return $$self->$isACLDocbase();
}

sub isAdopted {
    my $self = shift;
    my $isAdopted =  JPL::AutoLoader::getmeth('isAdopted',
                                             [],
                                             ['boolean']
                                            );
    return $$self->$isAdopted();
}

sub isConnected {
    my $self = shift;
    my $isConnected =  JPL::AutoLoader::getmeth('isConnected',
                                             [],
                                             ['boolean']
                                            );
    return $$self->$isConnected();
}

sub isRemote {
    my $self = shift;
    my $isRemote =  JPL::AutoLoader::getmeth('isRemote',
                                             [],
                                             ['boolean']
                                            );
    return $$self->$isRemote();
}

sub isShared {
    my $self = shift;
    my $isShared =  JPL::AutoLoader::getmeth('isShared',
                                             [],
                                             ['boolean']
                                            );
    return $$self->$isShared();
}

sub lock {
    my ($self,$msec) = @_;
    my $lock =  JPL::AutoLoader::getmeth('lock',
                                         ['int'],
                                         ['boolean']
                                        );
    return $$self->$lock($msec);
}

sub newObject {
    my ($self,$type) = @_;
    my $newObject = JPL::AutoLoader::getmeth('newObject',
                                             ['java.lang.String'],
                                             ['com.documentum.fc.client.IDfPersistentObject']
                                            );
    my $obj = $$self->$newObject($type);
    if ($obj) {
        bless(\$obj,IDfPersistentObject);
        return \$obj;
    } else {
        return undef;
    }
}

sub newObjectWithType {
    my ($self,$type,$class) = @_;
    my $newObjectWithType = JPL::AutoLoader::getmeth('newObjectWithType',
                                             ['java.lang.String',
                                              'java.lang.String'],
                                             ['com.documentum.fc.client.IDfPersistentObject']
                                            );
    my $obj = $$self->$newObjectWithType($type,$class);
    if ($obj) {
        bless(\$obj,IDfPersistentObject);
        return \$obj;
    } else {
        return undef;
    }
}

sub newWorkflowBuilder {
    my ($self,$procid) = @_;
    my $newWorkflowBuilder = JPL::AutoLoader::getmeth('newWorkflowBuilder',
                                             ['com.documentum.fc.common.IDfId'],
                                             ['com.documentum.fc.client.IDfWorkflowBuilder']
                                            );
    my $obj = $$self->$newWorkflowBuilder($type,$$procid);
    if ($obj) {
        bless(\$obj,IDfWorkflowBuilder);
        return \$obj;
    } else {
        return undef;
    }
}

sub purgeLocalFiles {
    my $self = shift;
    my $purgeLocalFiles = JPL::AutoLoader::getmeth('purgeLocalFiles',[],[]);
    return $$self->$purgeLocalFiles();
}

sub reInit {
    my ($self,$servername) = @_;
    my $reInit = JPL::AutoLoader::getmeth('reInit',
                                          ['java.lang.String'],
                                          []
                                         );
    return $$self->$reInit($servername);
}

sub resolveAlias {
    my ($self,$sysobj,$scope) = @_;
    my $resolveAlias = JPL::AutoLoader::getmeth('resolveAlias',
                                          ['com.documentum.fc.common.IDfId',
                                           'java.lang.String'],
                                          ['java.lang.String']
                                         );
    return $$self->$resolveAlias($$sysobj,$scope);
}

sub reStart {
    my ($self,$configname,$restartclient) = @_;
    my $reStart = JPL::AutoLoader::getmeth('reStart',
                                          ['java.lang.String',
                                           'boolean'],
                                          []
                                         );
    return $$self->$reStart($configname,$restartclient);
}

sub restore {
    my ($self,$predicate,$dumpfile,$opername,$priority,$sendmail,$duedate) = @_;
    my $restore = JPL::AutoLoader::getmeth('restore',
                                           ['java.lang.String',
                                            'java.lang.String',
                                            'java.lang.String',
                                            'int',
                                            'boolean',
                                            'com.documentum.fc.common.IDfTime'],
                                           ['com.documentum.fc.common.IDfId']
                                          );
    my $obj = $$self->$restore($predicate,$dumpfile,$opername,$priority,$sendmail,$$duedate);
    if ($obj) {
        bless(\$obj,IDfId);
        return \$obj;
    } else {
        return undef;
    }
}

sub sendToDistributionList {
    my ($self,$users,$groups,$instructions,$objs,$priority,$endnot) = @_;
    my $sendToDistributionList = JPL::AutoLoader::getmeth('sendToDistributionList',
                                             ['com.documentum.fc.common.IDfList',
                                              'com.documentum.fc.common.IDfList',
                                              'java.lang.String',
                                              'com.documentum.fc.common.IDfList',
                                              'int','boolean'],
                                             ['com.documentum.fc.common.IDfId']
                                            );
    my $id = $$self->$sendToDistributionList($$users,$$groups,$instructions,$$objs,
                                             $priority,$endnot);
    if ($id) {
        bless(\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub setBatchHint {
    my ($self,$size) = @_;
    my $setBatchHint = JPL::AutoLoader::getmeth('setBatchHint',
                                             ['int'],
                                             []
                                            );
    return $$self->$setBatchHint($size);
}

sub setDocbaseScope {
    my ($self,$name) = @_;
    my $setDocbaseScope = JPL::AutoLoader::getmeth('setDocbaseScope',
                                             ['java.lang.String'],
                                             ['java.lang.String']
                                            );
    return $$self->$setDocbaseScope($name);
}

sub setDocbaseScopeById {
    my ($self,$objid) = @_;
    my $setDocbaseScopeById = JPL::AutoLoader::getmeth('setDocbaseScopeById',
                                             ['com.documentum.fc.common.IDfId'],
                                             ['java.lang.String']
                                            );
    return $$self->$setDocbaseScopeById($$objid);
}

sub shutdown {
    my ($self,$now,$del) = @_;
    my $shutdown = JPL::AutoLoader::getmeth('shutdown',
                                            ['boolean',
                                             'boolean'],
                                            []
                                           );
    return $$self->$shutdown($now,$del);
}

sub traceDMCL {
    my ($self,$level,$fname) = @_;
    my $traceDMCL = JPL::AutoLoader::getmeth('traceDMCL',
                                            ['int',
                                             'java.lang.String'],
                                            []
                                           );
    return $$self->$traceDMCL($level,$fname);
}

sub unlock {
    my $self = shift;
    my $unlock = JPL::AutoLoader::getmeth('unlock',[],[]);
    return $$self->$unlock();
}


1;
#__EOF__