# ------------------------------------------------------------------- #
# IDfAttr
# com.documentum.fc.common.IDfAttr
# ------------------------------------------------------------------- #
package IDfAttr;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::IDfAttr';


# hash of data types?

sub getDataType {
    my $self = shift;
    my $getDataType = JPL::AutoLoader::getmeth('getDataType',[],['int']);
    return $$self->$getDataType();
}

sub getLength {
    my $self = shift;
    my $getLength = JPL::AutoLoader::getmeth('getLength',[],['int']);
    return $$self->$getLength();
}

sub getName {
    my $self = shift;
    my $getName = JPL::AutoLoader::getmeth('getName',[],['java.lang.String']);
    return $$self->$getName();
}

sub isRepeating {
    my $self = shift;
    my $isRepeating = JPL::AutoLoader::getmeth('isRepeating',[],['boolean']);
    return $$self->$isRepeating();
}


1;
#__EOF__