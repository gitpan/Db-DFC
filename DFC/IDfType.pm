# ------------------------------------------------------------------- #
# IDfType
# com.documentum.fc.client.IDfType
# ------------------------------------------------------------------- #
package IDfType;
@ISA = (IDfPersistentObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfType';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfList';


use constant DM_BOOLEAN     =>  0;
use constant DM_INTEGER     =>  1;
use constant DM_STRING      =>  2;
use constant DM_ID          =>  3;
use constant DM_TIME        =>  4;
use constant DM_DOUBLE	    =>  5;
use constant DM_UNDEFINED   =>  6;


sub findTypeAttrIndex {
	my ($self,$attrName) = @_;
	my $findTypeAttrIndex = JPL::AutoLoader::getmeth('findTypeAttrIndex',['java.lang.String'],['int']);
	return $$self->$findTypeAttrIndex($attrName);
}

sub getDescription {
	my $self = shift;
	my $getDescription = JPL::AutoLoader::getmeth('getDescription',[],['java.lang.String']);
	return $$self->$getDescription();
}

sub getName {
	my $self = shift;
	my $getName = JPL::AutoLoader::getmeth('getName',[],['java.lang.String']);
	return $$self->$getName();
}

sub getSuperName {
	my $self = shift;
	my $getSuperName = JPL::AutoLoader::getmeth('getSuperName',[],['java.lang.String']);
	return $$self->$getSuperName();
}

sub getSuperType {
	my $self = shift;
	my $getSuperType = JPL::AutoLoader::getmeth('getSuperType',[],['com.documentum.fc.common.IDfType']);
	my $tmp = $$self->$getSuperType();
	if ($tmp) {
		bless(\$tmp,IDfType);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getTypeAttrAssistanceWithValues {
	my ($self,$attrName,$policyId,$state,$depAttrNameList,$depAttrValueListList) = @_;
	my $getTypeAttrAssistanceWithValues = JPL::AutoLoader::getmeth('getTypeAttrAssistanceWithValues',['java.lang.String','com.documentum.fc.common.IDfId','java.lang.String','com.documentum.fc.common.IDfList','com.documentum.fc.common.IDfList'],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getTypeAttrAssistanceWithValues($attrName,$$policyId,$state,$$depAttrNameList,$$depAttrValueListList);
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getTypeAttrAsstDependencies {
	my ($self,$attrName,$policyId,$state) = @_;
	my $getTypeAttrAsstDependencies = JPL::AutoLoader::getmeth('getTypeAttrAsstDependencies',['java.lang.String','com.documentum.fc.common.IDfId','java.lang.String'],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getTypeAttrAsstDependencies($attrName,$$policyId,$state);
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getTypeAttrCount {
	my $self = shift;
	my $getTypeAttrCount = JPL::AutoLoader::getmeth('getTypeAttrCount',[],['int']);
	return $$self->$getTypeAttrCount();
}

sub getTypeAttrDataType {
	my ($self,$attrName) = @_;
	my $getTypeAttrDataType = JPL::AutoLoader::getmeth('getTypeAttrDataType',['java.lang.String'],['int']);
	return $$self->$getTypeAttrDataType($attrName);
}

sub getTypeAttrDataTypeAt {
	my ($self,$index) = @_;
	my $getTypeAttrDataTypeAt = JPL::AutoLoader::getmeth('getTypeAttrDataTypeAt',['int'],['int']);
	return $$self->$getTypeAttrDataTypeAt($index);
}

sub getTypeAttrDescription {
	my ($self,$attrName) = @_;
	my $getTypeAttrDescription = JPL::AutoLoader::getmeth('getTypeAttrDescription',['java.lang.String'],['java.lang.String']);
	return $$self->$getTypeAttrDescription($attrName);
}

sub getTypeAttrDescriptionAt {
	my ($self,$index) = @_;
	my $getTypeAttrDescriptionAt = JPL::AutoLoader::getmeth('getTypeAttrDescriptionAt',['int'],['java.lang.String']);
	return $$self->$getTypeAttrDescriptionAt($index);
}

sub getTypeAttrLength {
	my ($self,$attrName) = @_;
	my $getTypeAttrLength = JPL::AutoLoader::getmeth('getTypeAttrLength',['java.lang.String'],['int']);
	return $$self->$getTypeAttrLength($attrName);
}

sub getTypeAttrLengthAt {
	my ($self,$index) = @_;
	my $getTypeAttrLengthAt = JPL::AutoLoader::getmeth('getTypeAttrLengthAt',['int'],['int']);
	return $$self->$getTypeAttrLengthAt($index);
}

sub getTypeAttrNameAt {
	my ($self,$index) = @_;
	my $getTypeAttrNameAt = JPL::AutoLoader::getmeth('getTypeAttrNameAt',['int'],['java.lang.String']);
	return $$self->$getTypeAttrNameAt($index);
}

sub getTypeWidgetType {
	my ($self,$environment,$attrName,$policyId,$state) = @_;
	my $getTypeWidgetType = JPL::AutoLoader::getmeth('getTypeWidgetType',['int','java.lang.String','com.documentum.fc.common.IDfId','java.lang.String'],['java.lang.String']);
	return $$self->$getTypeWidgetType($environment,$attrName,$$policyId,$state);
}

sub isSubTypeOf {
	my ($self,$typeName) = @_;
	my $isSubTypeOf = JPL::AutoLoader::getmeth('isSubTypeOf',['java.lang.String'],['boolean']);
	return $$self->$isSubTypeOf($typeName);
}

sub isTypeAttrRepeating {
	my ($self,$attrName) = @_;
	my $isTypeAttrRepeating = JPL::AutoLoader::getmeth('isTypeAttrRepeating',['java.lang.String'],['boolean']);
	return $$self->$isTypeAttrRepeating($attrName);
}

sub isTypeAttrRepeatingAt {
	my ($self,$index) = @_;
	my $isTypeAttrRepeatingAt = JPL::AutoLoader::getmeth('isTypeAttrRepeatingAt',['int'],['boolean']);
	return $$self->$isTypeAttrRepeatingAt($index);
}

sub validateTypeAttrRulesWithValue {
	my ($self,$attrName,$policyId,$state,$value,$depAttrNameList,$depAttrValueListList,$stopAfterNumOfErrors) = @_;
	my $validateTypeAttrRulesWithValue = JPL::AutoLoader::getmeth('validateTypeAttrRulesWithValue',['java.lang.String','com.documentum.fc.common.IDfId','java.lang.String','java.lang.String','com.documentum.fc.common.IDfList','com.documentum.fc.common.IDfList','int'],[]);
	return $$self->$validateTypeAttrRulesWithValue($attrName,$$policyId,$state,$value,$$depAttrNameList,$$depAttrValueListList,$stopAfterNumOfErrors);
}

sub validateTypeAttrRulesWithValues {
	my ($self,$attrName,$policyId,$state,$values,$depAttrNameList,$depAttrValueListList,$stopAfterNumOfErrors) = @_;
	my $validateTypeAttrRulesWithValues = JPL::AutoLoader::getmeth('validateTypeAttrRulesWithValues',['java.lang.String','com.documentum.fc.common.IDfId','java.lang.String','com.documentum.fc.common.IDfList','com.documentum.fc.common.IDfList','com.documentum.fc.common.IDfList','int'],[]);
	return $$self->$validateTypeAttrRulesWithValues($attrName,$$policyId,$state,$$values,$$depAttrNameList,$$depAttrValueListList,$stopAfterNumOfErrors);
}

sub validateTypeObjRulesWithValues {
	my ($self,$attrNameList,$policyId,$state,$valueListList,$stopAfterNumOfErrors) = @_;
	my $validateTypeObjRulesWithValues = JPL::AutoLoader::getmeth('validateTypeObjRulesWithValues',['com.documentum.fc.XXX.IDfList','com.documentum.fc.common.IDfId','java.lang.String','com.documentum.fc.common.IDfList','int'],[]);
	return $$self->$validateTypeObjRulesWithValues($$attrNameList,$$policyId,$state,$$valueListList,$stopAfterNumOfErrors);
}


1;
#__EOF__