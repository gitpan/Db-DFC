# ------------------------------------------------------------------- #
# IDfClient
# com.documentum.fc.client.IDfClient
# ------------------------------------------------------------------- #
package IDfClient;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::DfLoginInfo';
use JPL::Class 'com::documentum::fc::common::IDfLoginInfo';
use JPL::Class 'com::documentum::fc::client::IDfSession';
use JPL::Class 'com::documentum::fc::client::IDfTypedObject';
use JPL::Class 'com::documentum::fc::common::IDfProperties';
use JPL::Class 'com::documentum::fc::client::IDfDocbaseMap';


sub adoptDMCLSession {
    my ($self,$key) = @_;
    my $adoptDMCLSession = JPL::AutoLoader::getmeth('adoptDMCLSession',
                                              ['java.lang.String'],
                                              ['com.documentum.fc.client.IDfSession']
                                             );
    my $session = $$self->$adoptDMCLSession($key);
    if ($session) {
        bless(\$session,IDfSession);
        return \$session;
    } else {
        return undef;
    }
}

sub enumSharedSessions {
    my ($self,$key) = @_;
    my $enumSharedSessions = JPL::AutoLoader::getmeth('enumSharedSessions',
                                              ['java.lang.String'],
                                              ['java.util.Enumeration']
                                             );
    return $$self->$enumSharedSessions($key);
}

sub findSession {
    my ($self,$session_id) = @_;
    my $findSession = JPL::AutoLoader::getmeth('findSession',
                                              ['java.lang.String'],
                                              ['com.documentum.fc.client.IDfSession']
                                             );
    my $session = $$self->$findSession($session_id);
    if ($session) {
        bless(\$session,IDfSession);
        return \$session;
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

sub getContext {
    my ($self,$key) = @_;
    my $getContext = JPL::AutoLoader::getmeth('getContext',
                                              ['java.lang.String'],
                                              ['com.documentum.fc.common.IDfProperties']
                                             );
    my $context = $$self->$getContext($key);
    if ($context) {
        bless(\$context,IDfProperties);
        return \$context
    } else {
        return undef;
    }
}

sub getDocbaseMap {
    my $self = shift;
    my $getDocbaseMap = JPL::AutoLoader::getmeth('getDocbaseMap',
                                              [],
                                              ['com.documentum.fc.client.IDfDocbaseMap']
                                             );
    my $dbmap = $$self->$getDocbaseMap();
    if ($dbmap) {
        bless(\$dbmap,IDfDocbaseMap);
        return \$dbmap
    } else {
        return undef;
    }
}

sub getSharedSession {
    my ($self,$docbase,$logininfo,$key) = @_;
    my $getSharedSession = JPL::AutoLoader::getmeth('getSharedSession',
                                              ['java.lang.String',
                                               'com.documentum.fc.common.IDfLoginInfo',
                                               'java.lang.String'],
                                              ['com.documentum.fc.client.IDfSession']
                                             );
    my $session = $$self->$getSharedSession($docbase,$$logininfo,$key);
    if ($session) {
        bless(\$session,IDfSession);
        return \$session;
    } else {
        return undef;
    }
}

sub newSession {
    my ($self,$docbase,$logininfo) = @_;
    my $newSession = JPL::AutoLoader::getmeth('newSession',
                                              ['java.lang.String',
                                               'com.documentum.fc.common.IDfLoginInfo'],
                                              ['com.documentum.fc.client.IDfSession']
                                             );
    my $session = $$self->$newSession($docbase,$$logininfo);
    if ($session) {
        bless(\$session,IDfSession);
        return \$session;
    } else {
        return undef;
    }
}

sub unadoptDMCLSession {
    my ($self,$key) = @_;
    my $unadoptDMCLSession = JPL::AutoLoader::getmeth('unadoptDMCLSession',
                                              [],
                                              ['java.lang.String'],
                                             );
    return $$self->$unadoptDMCLSession($key);
}


1;
#__EOF__