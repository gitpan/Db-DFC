# ------------------------------------------------------------------- #
# DfQuery
# com.documentum.fc.common.DfQuery
# ------------------------------------------------------------------- #
package DfQuery;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::DfQuery';
use JPL::Class 'com::documentum::fc::client::IDfQuery';


sub new {
    my $self = shift;
    my $new = JPL::AutoLoader::getmeth('new',[],[]);
    my $query = com::documentum::fc::client::DfQuery->$new();

    if ($query) {
        bless (\$query,IDfQuery);
        return \$query;
    } else {
        return undef;
    }
}


1;
#__EOF__