# ------------------------------------------------------------------- #
# DfTime
# com.documentum.fc.common.DfTime
# ------------------------------------------------------------------- #
package DfTime;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::DfTime';
use JPL::Class 'com::documentum::fc::client::IDfTime';

## Not all DfTime constructors implemented

sub new {
    my ($class,$date,$pattern) = @_;
    if ($date && $pattern) {
        my $new = JPL::AutoLoader::getmeth('new',['java.lang.String','java.lang.String'],[]);
        $temp = com::documentum::fc::common::DfTime->$new($date,$pattern);
    } else {
        my $new = JPL::AutoLoader::getmeth('new',[],[]);
        $temp = com::documentum::fc::common::DfTime->$new();
    }
    if ($temp) {
        bless (\$temp,IDfTime);
        return \$temp;
    } else {
        return undef;
    }
}

1;
#__EOF__