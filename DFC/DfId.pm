# ------------------------------------------------------------------- #
# DfId
# com.documentum.fc.common.DfId
# ------------------------------------------------------------------- #
package DfId;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::DfId';
use JPL::Class 'com::documentum::fc::common::IDfId';


use constant DF_NULLID      =>  0;                   # guess
use constant DF_NULLID_STR  =>  '0000000000000000';  # guess


sub new {
    my ($class,$id) = @_;
    if ($id) {
        my $new = JPL::AutoLoader::getmeth('new',
                                           ['java.lang.String'],
                                           []
                                          );
        $temp = com::documentum::fc::common::DfId->$new($id);
    } else {
        my $new = JPL::AutoLoader::getmeth('new',[],[]);
        $temp = com::documentum::fc::common::DfId->$new();
    }
    if ($temp) {
        bless (\$temp,IDfId);
        return \$temp;
    } else {
        return undef;
    }
}


1;
#__EOF__