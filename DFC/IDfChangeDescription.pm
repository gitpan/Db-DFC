# ------------------------------------------------------------------- #
# IDfChangeDescription
# com.documentum.fc.common.IDfChangeDescription
# ------------------------------------------------------------------- #
package IDfChangeDescription;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::IDfChangeDescription';
use JPL::Class 'com::documentum::fc::common::IDfId';


sub getChangeSequenceNumber {
	my $self = shift;
	my $getChangeSequenceNumber = JPL::AutoLoader::getmeth('getChangeSequenceNumber',[],['int']);
	return $$self->$getChangeSequenceNumber();
}

sub getCode {
	my $self = shift;
	my $getCode = JPL::AutoLoader::getmeth('getCode',[],['int']);
	return $$self->$getCode();
}

sub getContextTag {
	my $self = shift;
	my $getContextTag = JPL::AutoLoader::getmeth('getContextTag',[],['java.lang.String']);
	return $$self->$getContextTag();
}

sub getDescription {
	my $self = shift;
	my $getDescription = JPL::AutoLoader::getmeth('getDescription',[],['java.lang.String']);
	return $$self->$getDescription();
}

sub getObjectId {
	my $self = shift;
	my $getObjectId = JPL::AutoLoader::getmeth('getObjectId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getObjectId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}


1;
#__EOF__