# ------------------------------------------------------------------- #
# DfClient
# com.documentum.fc.client.DfClient
# ------------------------------------------------------------------- #
package DfClient;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::DfClient';
use JPL::Class 'com::documentum::fc::client::IDfClient';

sub new {
    my $class = shift;
    $self = com::documentum::fc::client::DfClient;
    # make self a pointer so it can be blessed into object package
    bless (\$self,$class);
    # return the pointer
    return \$self;
}

sub getDFCVersion {
    my $self = shift;
    my $getDFCVersion = JPL::AutoLoader::getmeth('getDFCVersion',
                                                 [],
                                                 ['java.lang.String']
                                                );
    # remember $self is a pointer, we want what it points to, thus $$
    return $$self->$getDFCVersion();
}

sub getLocalClient {
    my $self = shift;
    my $getLocalClient = JPL::AutoLoader::getmeth('getLocalClient',
                                                  [],
                                                  ['com.documentum.fc.client.IDfClient']
                                                 );
    my $localclient = $$self->$getLocalClient();
    if ($localclient) {
        bless (\$localclient,IDfClient);
        return \$localclient;
    } else {
        return undef;
    }
}

sub getLocalClient32 {
    my $self = shift;
    my $getLocalClient32 = JPL::AutoLoader::getmeth('getLocalClient32',
                                                    [],
                                                    ['com.documentum.fc.client.IDfClient']
                                                   );
    my $localclient = $$self->$getLocalClient32();
    if ($localclient) {
        bless (\$localclient,IDfClient);
        return \$localclient;
    } else {
        return undef;
    }
}

sub getRemoteClient {
    my ($self,$remoteclient) = @_;
    my $getRemoteClient = JPL::AutoLoader::getmeth('getRemoteClient',
                                                   ['java.lang.String'],
                                                   ['com.documentum.fc.client.IDfClient']
                                                 );
   my $localclient = $$self->$getRemoteClient($remoteclient);
   if ($localclient) {
        bless (\$localclient,IDfClient);
        return \$localclient;
    } else {
        return undef;
    }
}


1;
#__EOF__