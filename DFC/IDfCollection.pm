# ------------------------------------------------------------------- #
# IDfCollection
# com::documentum::fc::client::IDfCollection
# ------------------------------------------------------------------- #
package IDfCollection;
@ISA = (IDfTypedObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfCollection';
use JPL::Class 'com::documentum::fc::client::IDfTypedObject';


use constant DF_READY_STATE     =>  1;
use constant DF_CLOSED_STATE    =>  2;


sub close {
    my $self = shift;
    my $close = JPL::AutoLoader::getmeth('close',[],[]);
    return $$self->$close();
}

sub getBytesBuffer {
    my ($self,$cmd,$buf,$buflen,$len) = @_;
    my $getBytesBuffer = JPL::AutoLoader::getmeth('getBytesBuffer',
                                                  ['java.lang.String',
                                                   'java.lang.String',
                                                   'java.lang.String',
                                                   'int'],
                                                  ['java.io.ByteArrayInputStream']
                                                 );
    return $$self->$getBytesBuffer($cmd,$buf,$buflen,$len);
}

sub getState {
    my $self = shift;
    my $getState = JPL::AutoLoader::getmeth('getState',
                                            [],
                                            ['int']
                                           );
    return $$self->$getState();
}

sub getTypedObject {
    my $self = shift;
    my $getTypedObject = JPL::AutoLoader::getmeth('getTypedObject',
                                                  [],
                                                  ['com.documentum.fc.client.IDfTypedObject']
                                                 );
    my $row = $$self->$getTypedObject();
    if ($row) {
        bless (\$row,IDfTypedObject);
        return \$row;
    } else {
        return undef;
    }
}

sub next {
    my $self = shift;
    my $next = JPL::AutoLoader::getmeth('next',
                                        [],
                                        ['boolean']
                                       );
    return $$self->$next();
}

1;
#__EOF__