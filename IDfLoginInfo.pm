# ------------------------------------------------------------------- #
# IDfLoginInfo
# com::documentum::fc::common::IDfLoginInfo;
# ------------------------------------------------------------------- #
package IDfLoginInfo;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::DfLoginInfo';
use JPL::Class 'com::documentum::fc::common::IDfLoginInfo';


sub getDomain {
    my ($self) = @_;
    my $getDomain = JPL::AutoLoader::getmeth('getDomain',
                                             [],
                                             ['java.lang.String']
                                            );
    return $$self->$getDomain();
}

sub getPassword {
    my ($self) = @_;
    my $getPassword = JPL::AutoLoader::getmeth('getPassword',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getPassword();
}

sub getUser {
    my ($self) = @_;
    my $getUser = JPL::AutoLoader::getmeth('getUser',
                                           [],
                                           ['java.lang.String']
                                          );
    return $$self->$getUser();
}

sub getUserArg1 {
    my ($self) = @_;
    my $getUserArg1 = JPL::AutoLoader::getmeth('getUserArg1',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getUserArg1();
}

sub getUserArg2 {
    my ($self) = @_;
    my $getUserArg2 = JPL::AutoLoader::getmeth('getUserArg2',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getUserArg2();
}

sub setDomain {
    my ($self,$domain) = @_;
    my $setDomain = JPL::AutoLoader::getmeth('setDomain',
                                             ['java.lang.String'],
                                             []
                                            );
    return $$self->$setDomain($domain);
}

sub setPassword {
    my ($self,$password) = @_;
    my $setPassword = JPL::AutoLoader::getmeth('setPassword',
                                               ['java.lang.String'],
                                               []
                                              );
    return $$self->$setPassword($password);
}

sub setUser {
    my ($self,$user) = @_;
    my $setUser = JPL::AutoLoader::getmeth('setUser',
                                           ['java.lang.String'],
                                           []
                                          );
    return $$self->$setUser($user);
}

sub setUserArg1 {
    my ($self,$arg1) = @_;
    my $setUserArg1 = JPL::AutoLoader::getmeth('setUserArg1',
                                               ['java.lang.String'],
                                               []
                                              );
    return $$self->$setUserArg1($arg1);
}

sub setUserArg2 {
    my ($self,$arg2) = @_;
    my $setUserArg2 = JPL::AutoLoader::getmeth('setUserArg2',
                                               ['java.lang.String'],
                                               []
                                              );
    return $$self->$setUserArg2($arg2);
}


1;
#__EOF__