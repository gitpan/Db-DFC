# ------------------------------------------------------------------- #
# IDfValue
# com.documentum.fc.common.IDfValue
# ------------------------------------------------------------------- #
package IDfValue;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::IDfValue';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfTime';


use constant DM_BOOLEAN     =>  0;
use constant DM_INTEGER     =>  1;
use constant DM_STRING      =>  2;
use constant DM_ID          =>  3;
use constant DM_TIME        =>  4;
use constant DM_DOUBLE	    =>  5;
use constant DM_UNDEFINED   =>  6;


sub asBoolean {
	my $self = shift;
	my $asBoolean = JPL::AutoLoader::getmeth('asBoolean',[],['boolean']);
	return $$self->$asBoolean();
}

sub asDouble {
	my $self = shift;
	my $asDouble = JPL::AutoLoader::getmeth('asDouble',[],['double']);
	return $$self->$asDouble();
}

sub asId {
	my $self = shift;
	my $asId = JPL::AutoLoader::getmeth('asId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$asId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub asInteger {
	my $self = shift;
	my $asInteger = JPL::AutoLoader::getmeth('asInteger',[],['int']);
	return $$self->$asInteger();
}

sub asString {
	my $self = shift;
	my $asString = JPL::AutoLoader::getmeth('asString',[],['java.lang.String']);
	return $$self->$asString();
}

sub asTime {
	my $self = shift;
	my $asTime = JPL::AutoLoader::getmeth('asTime',[],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$asTime();
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub compareTo {
	my ($self,$value) = @_;
	my $compareTo = JPL::AutoLoader::getmeth('compareTo',['com.documentum.fc.common.IDfValue'],['int']);
	return $$self->$compareTo($$value);
}

sub equals {
	my ($self,$value) = @_;
	my $equals = JPL::AutoLoader::getmeth('equals',['com.documentum.fc.common.IDfValue'],['boolean']);
	return $$self->$equals($$value);
}

sub getDataType {
	my $self = shift;
	my $getDataType = JPL::AutoLoader::getmeth('getDataType',[],['int']);
	return $$self->$getDataType();
}


1;
#__EOF__