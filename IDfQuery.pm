# ------------------------------------------------------------------- #
# IDfQuery
# com::documentum::fc::client::IDfQuery
# ------------------------------------------------------------------- #
package IDfQuery;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfQuery';
use JPL::Class 'com.documentum.fc.client.IDfCollection';


sub execute {
    my ($self,$session,$qtype) = @_;
    my $execute = JPL::AutoLoader::getmeth('execute',
                                           ['com.documentum.fc.client.IDfSession',
                                            'int'],
                                           ['com.documentum.fc.client.IDfCollection']
                                          );
    my $col = $$self->$execute($$session,$qtype);
    if ($col ) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getBatchSize {
    my $self = shift;
    my $getBatchSize = JPL::AutoLoader::getmeth('getBatchSize',
                                          [],
                                          ['int']
                                         );
    return $$self->$getBatchSize();
}

sub getDQL {
    my $self = shift;
    my $getDQL = JPL::AutoLoader::getmeth('getDQL',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getDQL();
}

sub setBatchSize {
    my ($self,$size) = @_;
    my $setBatchSize = JPL::AutoLoader::getmeth('setBatchSize',
                                          ['int'],
                                          []
                                         );
    return $$self->$setBatchSize($size);
}

sub setDQL {
    my ($self,$dql) = @_;
    my $setDQL = JPL::AutoLoader::getmeth('setDQL',
                                          ['java.lang.String'],
                                          []
                                         );
    return $$self->$setDQL($dql);
}

1;
#__EOF__