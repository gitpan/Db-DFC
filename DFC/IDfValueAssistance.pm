# ------------------------------------------------------------------- #
# IDfValueAssistance
# com.documentum.fc.client.IDfValueAssistance
# ------------------------------------------------------------------- #
package IDfValueAssistance;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfValueAssistance';
use JPL::Class 'com::documentum::fc::common::IDfList';
use JPL::Class 'com::documentum::fc::common::IDfProperties';


sub getActualValue {
	my ($self,$displayValue) = @_;
	my $getActualValue = JPL::AutoLoader::getmeth('getActualValue',['java.lang.String'],['java.lang.String']);
	return $$self->$getActualValue($displayValue);
}

sub getActualValues {
	my $self = shift;
	my $getActualValues = JPL::AutoLoader::getmeth('getActualValues',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getActualValues();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getDisplayValue {
	my ($self,$actualValue) = @_;
	my $getDisplayValue = JPL::AutoLoader::getmeth('getDisplayValue',['java.lang.String'],['java.lang.String']);
	return $$self->$getDisplayValue($actualValue);
}

sub getDisplayValues {
	my $self = shift;
	my $getDisplayValues = JPL::AutoLoader::getmeth('getDisplayValues',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getDisplayValues();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub isListComplete {
	my $self = shift;
	my $isListComplete = JPL::AutoLoader::getmeth('isListComplete',[],['boolean']);
	return $$self->$isListComplete();
}

sub isValidForDependentValues {
	my ($self,$depAttrValues) = @_;
	my $isValidForDependentValues = JPL::AutoLoader::getmeth('isValidForDependentValues',['com.documentum.fc.common.IDfProperties'],['boolean']);
	return $$self->$isValidForDependentValues($$depAttrValues);
}

sub isValidForObject {
	my ($self,$objectInstance) = @_;
	my $isValidForObject = JPL::AutoLoader::getmeth('isValidForObject',['com.documentum.fc.common.IDfPersistentObject'],['boolean']);
	return $$self->$isValidForObject($$objectInstance);
}


1;
#__EOF__