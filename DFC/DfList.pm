# ------------------------------------------------------------------- #
# DfList
# com.documentum.fc.common.DfList
# ------------------------------------------------------------------- #
package DfList;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::DfList';
use JPL::Class 'com::documentum::fc::common::IDfList';


## Not all DfList constructors implemented

sub new {
    my ($class,$type) = @_;
    if ($type) {
        my $new = JPL::AutoLoader::getmeth('new',['int'],[]);
        $temp = com::documentum::fc::common::DfList->$new($type);
    } else {
        my $new = JPL::AutoLoader::getmeth('new',[],[]);
        $temp = com::documentum::fc::common::DfList->$new();
    }
    if ($temp) {
        bless (\$temp,IDfList);
        return \$temp;
    } else {
        return undef;
    }
}


1;
#__EOF__