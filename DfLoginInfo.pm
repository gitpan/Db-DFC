# ------------------------------------------------------------------- #
# DfLoginInfo
# com.documentum.fc.common.DfLoginInfo;
# ------------------------------------------------------------------- #
package DfLoginInfo;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::DfLoginInfo';
use JPL::Class 'com::documentum::fc::common::IDfLoginInfo';


sub new {
    my ($class,$li) = @_;
    if ($li) {
        my $new = JPL::AutoLoader::getmeth('new',
                                           ['com.documentum.fc.common.IDfLoginInfo'],
                                           []
                                          );
        $idflogininfo = com::documentum::fc::common::DfLoginInfo->$new($$li);
    } else {
        my $new = JPL::AutoLoader::getmeth('new',[],[]);
        $idflogininfo = com::documentum::fc::common::DfLoginInfo->$new();
    }
    bless (\$idflogininfo,IDfLoginInfo);
    return \$idflogininfo;
}


1;
#__EOF__