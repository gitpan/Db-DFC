# ------------------------------------------------------------------- #
# DfProperties
# com.documentum.fc.common.DfProperties
# ------------------------------------------------------------------- #
package DfProperties;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::DfProperties';
use JPL::Class 'com::documentum::fc::common::IDfProperties';


sub new {
    my ($class,$size) = @_;
    if ($size) {
        my $new = JPL::AutoLoader::getmeth('new',['int'],[]);
        $temp = com::documentum::fc::common::DfProperties->$new($size);
    } else {
        my $new = JPL::AutoLoader::getmeth('new',[],[]);
        $temp = com::documentum::fc::common::DfProperties->$new();
    }
    if ($temp) {
        bless (\$temp,IDfProperties);
        return \$temp;
    } else {
        return undef;
    }
}


1;
#__EOF__