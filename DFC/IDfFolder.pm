# ------------------------------------------------------------------- #
# IDfFolder
# com.documentum.fc.client.IDfFolder
# ------------------------------------------------------------------- #
package IDfFolder;
@ISA = (IDfSysObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfFolder';
use JPL::Class 'com::documentum::fc::client::IDfCollection';


sub getAncestorId {
    my ($self,$idx) = @_;
    my $getAncestorId = JPL::AutoLoader::getmeth('getAncestorId',
                                          ['int'],
                                          ['java.lang.String']
                                         );
    return $$self->$getAncestorId($idx);
}

sub getAncestorIdCount {
    my $self = shift;
    my $getAncestorIdCount = JPL::AutoLoader::getmeth('getAncestorIdCount',
                                          [],
                                          ['int']
                                         );
    return $$self->$getAncestorIdCount();
}

sub getContents {
    my ($self,$attr) = @_;
    my $getContents = JPL::AutoLoader::getmeth('getContents',
                                          ['java.lang.String'],
                                          ['com.documentum.fc.client.IDfCollection']
                                         );
    my $col = $$self->$getContents($attr);
    if ($col) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getFolderPath {
    my ($self,$idx) = @_;
    my $getFolderPath = JPL::AutoLoader::getmeth('getFolderPath',
                                          ['int'],
                                          ['java.lang.String']
                                         );
    return $$self->$getFolderPath($idx);
}

sub getFolderPathCount {
    my $self = shift;
    my $getFolderPathCount = JPL::AutoLoader::getmeth('getFolderPathCount',
                                          [],
                                          ['int']
                                         );
    return $$self->$getFolderPathCount();
}


1;
#__EOF__