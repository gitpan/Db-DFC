# ------------------------------------------------------------------- #
# IDfValidator
# com.documentum.fc.client.IDfValidator
# ------------------------------------------------------------------- #
package IDfValidator;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfValidator';
use JPL::Class 'com::documentum::fc::client::IDfPersistentObject';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfList';
use JPL::Class 'com::documentum::fc::common::IDfProperties';
use JPL::Class 'com::documentum::fc::client::IDfValueAssistance';


sub getAssociatedObject {
	my $self = shift;
	my $getAssociatedObject = JPL::AutoLoader::getmeth('getAssociatedObject',[],['com.documentum.fc.client.IDfPersistentObject']);
	my $tmp = $$self->$getAssociatedObject();
	if ($tmp) {
		bless(\$tmp,IDfPersistentObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getMaxErrorBeforeStop {
	my $self = shift;
	my $getMaxErrorBeforeStop = JPL::AutoLoader::getmeth('getMaxErrorBeforeStop',[],['int']);
	return $$self->$getMaxErrorBeforeStop();
}

sub getObjectType {
	my $self = shift;
	my $getObjectType = JPL::AutoLoader::getmeth('getObjectType',[],['java.lang.String']);
	return $$self->$getObjectType();
}

sub getPolicyID {
	my $self = shift;
	my $getPolicyID = JPL::AutoLoader::getmeth('getPolicyID',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getPolicyID();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getStateName {
	my $self = shift;
	my $getStateName = JPL::AutoLoader::getmeth('getStateName',[],['java.lang.String']);
	return $$self->$getStateName();
}

sub getTimePattern {
	my $self = shift;
	my $getTimePattern = JPL::AutoLoader::getmeth('getTimePattern',[],['java.lang.String']);
	return $$self->$getTimePattern();
}

sub getValueAssistance {
	my ($self,$attrName,$depAttrValues) = @_;
	my $getValueAssistance = JPL::AutoLoader::getmeth('getValueAssistance',['java.lang.String','com.documentum.fc.common.IDfProperties'],['com.documentum.fc.client.IDfValueAssistance']);
	my $tmp = $$self->$getValueAssistance($attrName,$$depAttrValues);
	if ($tmp) {
		bless(\$tmp,IDfValueAssistance);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getValueAssistanceDependencies {
	my ($self,$attrName) = @_;
	my $getValueAssistanceDependencies = JPL::AutoLoader::getmeth('getValueAssistanceDependencies',['java.lang.String'],['com.documentum.fc.common.IDfProperties']);
	my $tmp = $$self->$getValueAssistanceDependencies($attrName);
	if ($tmp) {
		bless(\$tmp,IDfProperties);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getWidgetType {
	my ($self,$environment,$attrName) = @_;
	my $getWidgetType = JPL::AutoLoader::getmeth('getWidgetType',['int','java.lang.String'],['java.lang.String']);
	return $$self->$getWidgetType($environment,$attrName);
}

sub hasValueAssistance {
	my ($self,$attrName) = @_;
	my $hasValueAssistance = JPL::AutoLoader::getmeth('hasValueAssistance',['java.lang.String'],['boolean']);
	return $$self->$hasValueAssistance($attrName);
}

sub setMaxErrorBeforeStop {
	my ($self,$stopAfterNumOfErrors) = @_;
	my $setMaxErrorBeforeStop = JPL::AutoLoader::getmeth('setMaxErrorBeforeStop',['int'],[]);
	return $$self->$setMaxErrorBeforeStop($stopAfterNumOfErrors);
}

sub setTimePattern {
	my ($self,$timePattern) = @_;
	my $setTimePattern = JPL::AutoLoader::getmeth('setTimePattern',['java.lang.String'],[]);
	return $$self->$setTimePattern($timePattern);
}

sub validateAll {
	my ($self,$attrValues,$modifiedAttrsOnly) = @_;
	my $validateAll = JPL::AutoLoader::getmeth('validateAll',['com.documentum.fc.common.IDfProperties','boolean'],[]);
	return $$self->$validateAll($$attrValues,$modifiedAttrsOnly);
}

sub validateAllAttrRules {
	my ($self,$attrValues,$modifiedAttrsOnly) = @_;
	my $validateAllAttrRules = JPL::AutoLoader::getmeth('validateAllAttrRules',['com.documentum.fc.common.IDfProperties','boolean'],[]);
	return $$self->$validateAllAttrRules($$attrValues,$modifiedAttrsOnly);
}

sub validateAllObjRules {
	my ($self,$attrValues) = @_;
	my $validateAllObjRules = JPL::AutoLoader::getmeth('validateAllObjRules',['com.documentum.fc.common.IDfProperties'],[]);
	return $$self->$validateAllObjRules($$attrValues);
}

sub validateAttrRules {
	my ($self,$attrName,$values,$depAttrValues) = @_;
	my $validateAttrRules = JPL::AutoLoader::getmeth('validateAttrRules',['java.lang.String','com.documentum.fc.common.IDfList','com.documentum.fc.common.IDfProperties'],[]);
	return $$self->$validateAttrRules($attrName,$$values,$$depAttrValues);
}


1;
#__EOF__