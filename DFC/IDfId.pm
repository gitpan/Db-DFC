# ------------------------------------------------------------------- #
# IDfId
# com.documentum.fc.common.IDfId
# ------------------------------------------------------------------- #
package IDfId;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::DfId';
use JPL::Class 'com::documentum::fc::common::IDfId';


use constant DM_ACL                 =>  69;
use constant DM_ACTIVITY            =>  76;
use constant DM_ASSEMBLY            =>  13;
use constant DM_BLOBSTORE           =>  64;
use constant DM_CABINET             =>  12;
use constant DM_CHANGE_RECORD       =>  51;
use constant DM_CONTAINMENT         =>  5;
use constant DM_CONTENT             =>  6;
use constant DM_DIST_COMP_RECORD    =>  54;
use constant DM_DISTRIBUTEDSTORE    =>  44;
use constant DM_DOCBASE_CONFIG      =>  60;
use constant DM_DOCBASEID_MAP       =>  68;
use constant DM_DOCBROKER           =>  63;
use constant DM_DOCUMENT            =>  9;
use constant DM_DUMP_OBJECT_RECORD  =>  48;
use constant DM_DUMP_RECORD         =>  47;
use constant DM_EVENT               =>  29;
use constant DM_FILESTORE           =>  40;
use constant DM_FOLDER              =>  11;
use constant DM_FORMAT              =>  39;
use constant DM_FULLTEXT_INDEX      =>  59;
use constant DM_GROUP               =>  18;
use constant DM_INDEX               =>  31;
use constant DM_LINKEDSTORE         =>  42;
use constant DM_LINKRECORD          =>  43;
use constant DM_LOAD_OBJECT_RECORD  =>  50;
use constant DM_LOAD_RECORD         =>  49;
use constant DM_LOCATION            =>  58;
use constant DM_METHOD              =>  16;
use constant DM_NETSTORE            =>  41;
use constant DM_NOTE                =>  65;
use constant DM_OBJECT              =>  2;
use constant DM_OUTPUTDEVICE        =>  23;
use constant DM_PARTITION           =>  0;     # not known
use constant DM_POLICY              =>  70;
use constant DM_PROCESS             =>  0;     # not known
use constant DM_QUERY               =>  10;
use constant DM_QUEUE_ITEM          =>  27;
use constant DM_REGISTERED          =>  25;
use constant DM_REGISTRY            =>  38;
use constant DM_RELATION            =>  55;
use constant DM_RELATIONTYPE        =>  56;
use constant DM_REMOTESTORE         =>  66;
use constant DM_REPLICA_RECORD      =>  45;
use constant DM_ROUTER              =>  24;
use constant DM_SEQUENCE            =>  32;
use constant DM_SERVER_CONFIG       =>  61;
use constant DM_SESSION             =>  1;
use constant DM_STORE               =>  14;
use constant DM_SYSOBJECT           =>  8;
use constant DM_TYPE                =>  3;
use constant DM_TYPE_INFO           =>  46;
use constant DM_USER                =>  17;
use constant DM_WORKFLOW            =>  77;
use constant DM_WORKITEM            =>  0;     # not known
use constant DMI_PACKAGE            =>  0;     # not known


sub compareTo {
    my ($self,$dfid) = @_;
    my $compateTo = JPL::AutoLoader::getmeth('compareTo',
                                             ['com.documentum.fc.common.IDfId'],
                                             ['int']
                                            );
    return $$self->$compareTo($$dfid);
}

sub equals {
    my ($self,$obj) = @_;
    my $equals = JPL::AutoLoader::getmeth('equals',
                                          ['java.lang.Object'],
                                          ['boolean']
                                         );
    return $$self->$equals($$obj);
}

sub getDocbaseId {
    my $self = shift;
    my $getDocbaseId = JPL::AutoLoader::getmeth('getDocbaseId',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getDocbaseId();
}

sub getId {
    my $self = shift;
    my $getId = JPL::AutoLoader::getmeth('getId',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getId();
}

sub getTypePart {
    my $self = shift;
    my $getTypePart = JPL::AutoLoader::getmeth('getTypePart',
                                          [],
                                          ['int']
                                         );
    return $$self->$getTypePart();
}

sub isNull {
    my $self = shift;
    my $isNull = JPL::AutoLoader::getmeth('isNull',
                                          [],
                                          ['boolean']
                                         );
    return $$self->$isNull();
}


sub toString {
    my $self = shift;
    my $toString = JPL::AutoLoader::getmeth('toString',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$toString();
}


1;
#__EOF__

         