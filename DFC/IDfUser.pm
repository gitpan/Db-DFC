# ------------------------------------------------------------------- #
# IDfUser
# com.documentum.fc.client.IDfUser
# ------------------------------------------------------------------- #
package IDfUser;
@ISA = (IDfPersistentObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfUser';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfTime';


sub getACLDomain {
    my $self = shift;
    my $getACLDomain = JPL::AutoLoader::getmeth('getACLDomain',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getACLDomain();
}

sub getACLName {
    my $self = shift;
    my $getACLName = JPL::AutoLoader::getmeth('getACLName',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getACLName();
}

sub getAliasSet {
    my $self = shift;
    my $getAliasSet = JPL::AutoLoader::getmeth('getAliasSet',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getAliasSet();
}

sub getAliasSetId {
    my $self = shift;
    my $getAliasSetId = JPL::AutoLoader::getmeth('getAliasSetId',
                                          [],
                                          ['com.documentum.fc.common.IDfId']
                                         );
    my $id = $$self->$getAliasSetId();
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub getClientCapability {
    my $self = shift;
    my $getClientCapability = JPL::AutoLoader::getmeth('getClientCapability',
                                          [],
                                          ['int']
                                         );
    return $$self->$getClientCapability();
}

sub getDefaultFolder {
    my $self = shift;
    my $getDefaultFolder = JPL::AutoLoader::getmeth('getDefaultFolder',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getDefaultFolder();
}

sub getDescription {
    my $self = shift;
    my $getDescription = JPL::AutoLoader::getmeth('getDescription',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getDescription();
}

sub getGroupDefPermit {
    my $self = shift;
    my $getGroupDefPermit = JPL::AutoLoader::getmeth('getGroupDefPermit',
                                          [],
                                          ['int']
                                         );
    return $$self->$getGroupDefPermit();
}

sub getHomeDocbase {
    my $self = shift;
    my $getHomeDocbase = JPL::AutoLoader::getmeth('getHomeDocbase',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getHomeDocbase();
}

sub getModifyDate {
    my $self = shift;
    my $getModifyDate = JPL::AutoLoader::getmeth('getModifyDate',
                                          [],
                                          ['com.documentum.fc.common.IDfTime']
                                         );
    my $moddate = $$self->$getModifyDate();
    if ($moddate) {
        bless (\$moddate,IDfTime);
        return \$moddate;
    } else {
        return undef;
    }
}

sub getOwnerDefPermit {
    my $self = shift;
    my $getOwnerDefPermit = JPL::AutoLoader::getmeth('getOwnerDefPermit',
                                          [],
                                          ['int']
                                         );
    return $$self->$getOwnerDefPermit();
}

sub getUserAddress {
    my $self = shift;
    my $getUserAddress = JPL::AutoLoader::getmeth('getUserAddress',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getUserAddress();
}

sub getUserDBName {
    my $self = shift;
    my $getUserDBName = JPL::AutoLoader::getmeth('getUserDBName',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getUserDBName();
}

sub getUserDelegation {
    my $self = shift;
    my $getUserDelegation = JPL::AutoLoader::getmeth('getUserDelegation',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getUserDelegation();
}

sub getUserGroupName {
    my $self = shift;
    my $getUserGroupName = JPL::AutoLoader::getmeth('getUserGroupName',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getUserGroupName();
}

sub getUserName {
    my $self = shift;
    my $getUserName = JPL::AutoLoader::getmeth('getUserName',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getUserName();
}

sub getUserOSDomain {
    my $self = shift;
    my $getUserOSDomain = JPL::AutoLoader::getmeth('getUserOSDomain',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getUserOSDomain();
}

sub getUserOSName {
    my $self = shift;
    my $getUserOSName = JPL::AutoLoader::getmeth('getUserOSName',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getUserOSName();
}

sub getUserPrivileges {
    my $self = shift;
    my $getUserPrivileges = JPL::AutoLoader::getmeth('getUserPrivileges',
                                          [],
                                          ['int']
                                         );
    return $$self->$getUserPrivileges();
}

sub getUserState {
    my $self = shift;
    my $getUserState = JPL::AutoLoader::getmeth('getUserState',
                                          [],
                                          ['int']
                                         );
    return $$self->$getUserState();
}

sub getWorldDefPermit {
    my $self = shift;
    my $getWorldDefPermit = JPL::AutoLoader::getmeth('getWorldDefPermit',
                                          [],
                                          ['int']
                                         );
    return $$self->$getWorldDefPermit();
}

sub isGloballyManaged {
    my $self = shift;
    my $isGloballyManaged = JPL::AutoLoader::getmeth('isGloballyManaged',
                                          [],
                                          ['boolean']
                                         );
    return $$self->$isGloballyManaged();
}

sub isGroup {
    my $self = shift;
    my $isGroup = JPL::AutoLoader::getmeth('isGroup',
                                          [],
                                          ['boolean']
                                         );
    return $$self->$isGroup();
}

sub isSuperUser {
    my $self = shift;
    my $isSuperUser = JPL::AutoLoader::getmeth('isSuperUser',
                                          [],
                                          ['boolean']
                                         );
    return $$self->$isSuperUser();
}

sub isSystemAdmin {
    my $self = shift;
    my $isSystemAdmin = JPL::AutoLoader::getmeth('isSystemAdmin',
                                          [],
                                          ['boolean']
                                         );
    return $$self->$isSystemAdmin();
}

sub isWorkflowDisabled {
    my $self = shift;
    my $isWorkflowDisabled = JPL::AutoLoader::getmeth('isWorkflowDisabled',
                                          [],
                                          ['boolean']
                                         );
    return $$self->$isWorkflowDisabled();
}


1;
#__EOF__
