# ------------------------------------------------------------------- #
# IDfActivity
# com.documentum.fc.client.IDfActivity
# ------------------------------------------------------------------- #
package IDfActivity;
@ISA = (IDfSysObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfActivity';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfList';


sub addPackageInfo {
	my ($self,$portName,$packageName,$packageType,$packageId,$packageLabel,$packageOperation) = @_;
	my $addPackageInfo = JPL::AutoLoader::getmeth('addPackageInfo',['java.lang.String','java.lang.String','java.lang.String','com.documentum.fc.common.IDfId','java.lang.String','java.lang.String'],[]);
	return $$self->$addPackageInfo($portName,$packageName,$packageType,$$packageId,$packageLabel,$packageOperation);
}

sub addPort {
	my ($self,$portName,$portType) = @_;
	my $addPort = JPL::AutoLoader::getmeth('addPort',['java.lang.String','java.lang.String'],[]);
	return $$self->$addPort($portName,$portType);
}

sub addRouteCase {
	my ($self,$routeCaseIdentifier,$condition,$outputPorts) = @_;
	my $addRouteCase = JPL::AutoLoader::getmeth('addRouteCase',['java.lang.String','java.lang.String','com.documentum.fc.common.IDfList'],[]);
	return $$self->$addRouteCase($routeCaseIdentifier,$condition,$$outputPorts);
}

sub getConditionCount {
	my $self = shift;
	my $getConditionCount = JPL::AutoLoader::getmeth('getConditionCount',[],['int']);
	return $$self->$getConditionCount();
}

sub getConditionId {
	my $self = shift;
	my $getConditionId = JPL::AutoLoader::getmeth('getConditionId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getConditionId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getConditionName {
	my ($self,$index) = @_;
	my $getConditionName = JPL::AutoLoader::getmeth('getConditionName',['int'],['java.lang.String']);
	return $$self->$getConditionName($index);
}

sub getConditionPort {
	my ($self,$index) = @_;
	my $getConditionPort = JPL::AutoLoader::getmeth('getConditionPort',['int'],['java.lang.String']);
	return $$self->$getConditionPort($index);
}

sub getDefinitionState {
	my $self = shift;
	my $getDefinitionState = JPL::AutoLoader::getmeth('getDefinitionState',[],['java.lang.String']);
	return $$self->$getDefinitionState();
}

sub getExecErrHandling {
	my $self = shift;
	my $getExecErrHandling = JPL::AutoLoader::getmeth('getExecErrHandling',[],['int']);
	return $$self->$getExecErrHandling();
}

sub getExecMethodId {
	my $self = shift;
	my $getExecMethodId = JPL::AutoLoader::getmeth('getExecMethodId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getExecMethodId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getExecTimeOut {
	my $self = shift;
	my $getExecTimeOut = JPL::AutoLoader::getmeth('getExecTimeOut',[],['int']);
	return $$self->$getExecTimeOut();
}

sub getExecType {
	my $self = shift;
	my $getExecType = JPL::AutoLoader::getmeth('getExecType',[],['int']);
	return $$self->$getExecType();
}

sub getPackageCount {
	my $self = shift;
	my $getPackageCount = JPL::AutoLoader::getmeth('getPackageCount',[],['int']);
	return $$self->$getPackageCount();
}

sub getPackageId {
	my ($self,$index) = @_;
	my $getPackageId = JPL::AutoLoader::getmeth('getPackageId',['int'],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getPackageId($index);
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getPackageLabel {
	my ($self,$index) = @_;
	my $getPackageLabel = JPL::AutoLoader::getmeth('getPackageLabel',['int'],['java.lang.String']);
	return $$self->$getPackageLabel($index);
}

sub getPackageName {
	my ($self,$index) = @_;
	my $getPackageName = JPL::AutoLoader::getmeth('getPackageName',['int'],['java.lang.String']);
	return $$self->$getPackageName($index);
}

sub getPackageOperation {
	my ($self,$index) = @_;
	my $getPackageOperation = JPL::AutoLoader::getmeth('getPackageOperation',['int'],['java.lang.String']);
	return $$self->$getPackageOperation($index);
}

sub getPackageType {
	my ($self,$index) = @_;
	my $getPackageType = JPL::AutoLoader::getmeth('getPackageType',['int'],['java.lang.String']);
	return $$self->$getPackageType($index);
}

sub getPerformerFlag {
	my $self = shift;
	my $getPerformerFlag = JPL::AutoLoader::getmeth('getPerformerFlag',[],['int']);
	return $$self->$getPerformerFlag();
}

sub getPerformerName {
	my $self = shift;
	my $getPerformerName = JPL::AutoLoader::getmeth('getPerformerName',[],['java.lang.String']);
	return $$self->$getPerformerName();
}

sub getPerformerType {
	my $self = shift;
	my $getPerformerType = JPL::AutoLoader::getmeth('getPerformerType',[],['int']);
	return $$self->$getPerformerType();
}

sub getPortCount {
	my $self = shift;
	my $getPortCount = JPL::AutoLoader::getmeth('getPortCount',[],['int']);
	return $$self->$getPortCount();
}

sub getPortName {
	my ($self,$index) = @_;
	my $getPortName = JPL::AutoLoader::getmeth('getPortName',['int'],['java.lang.String']);
	return $$self->$getPortName($index);
}

sub getPortType {
	my ($self,$index) = @_;
	my $getPortType = JPL::AutoLoader::getmeth('getPortType',['int'],['java.lang.String']);
	return $$self->$getPortType($index);
}

sub getPostTimer {
	my $self = shift;
	my $getPostTimer = JPL::AutoLoader::getmeth('getPostTimer',[],['int']);
	return $$self->$getPostTimer();
}

sub getPreTimer {
	my $self = shift;
	my $getPreTimer = JPL::AutoLoader::getmeth('getPreTimer',[],['int']);
	return $$self->$getPreTimer();
}

sub getResolvePackageName {
	my $self = shift;
	my $getResolvePackageName = JPL::AutoLoader::getmeth('getResolvePackageName',[],['java.lang.String']);
	return $$self->$getResolvePackageName();
}

sub getResolveType {
	my $self = shift;
	my $getResolveType = JPL::AutoLoader::getmeth('getResolveType',[],['int']);
	return $$self->$getResolveType();
}

sub getSignoffRequired {
	my $self = shift;
	my $getSignoffRequired = JPL::AutoLoader::getmeth('getSignoffRequired',[],['boolean']);
	return $$self->$getSignoffRequired();
}

sub getTransitionType {
	my $self = shift;
	my $getTransitionType = JPL::AutoLoader::getmeth('getTransitionType',[],['int']);
	return $$self->$getTransitionType();
}

sub getTriggerEvent {
	my $self = shift;
	my $getTriggerEvent = JPL::AutoLoader::getmeth('getTriggerEvent',[],['java.lang.String']);
	return $$self->$getTriggerEvent();
}

sub getTriggerThreshold {
	my $self = shift;
	my $getTriggerThreshold = JPL::AutoLoader::getmeth('getTriggerThreshold',[],['int']);
	return $$self->$getTriggerThreshold();
}

sub install {
	my $self = shift;
	my $install = JPL::AutoLoader::getmeth('install',[],[]);
	return $$self->$install();
}

sub invalidate {
	my $self = shift;
	my $invalidate = JPL::AutoLoader::getmeth('invalidate',[],[]);
	return $$self->$invalidate();
}

sub isExecSaveResults {
	my $self = shift;
	my $isExecSaveResults = JPL::AutoLoader::getmeth('isExecSaveResults',[],['boolean']);
	return $$self->$isExecSaveResults();
}

sub isPrivate {
	my $self = shift;
	my $isPrivate = JPL::AutoLoader::getmeth('isPrivate',[],['boolean']);
	return $$self->$isPrivate();
}

sub isRepeatableInvoke {
	my $self = shift;
	my $isRepeatableInvoke = JPL::AutoLoader::getmeth('isRepeatableInvoke',[],['boolean']);
	return $$self->$isRepeatableInvoke();
}

sub removePackageInfo {
	my ($self,$portName,$packageName) = @_;
	my $removePackageInfo = JPL::AutoLoader::getmeth('removePackageInfo',['java.lang.String','java.lang.String'],[]);
	return $$self->$removePackageInfo($portName,$packageName);
}

sub removePort {
	my ($self,$portName) = @_;
	my $removePort = JPL::AutoLoader::getmeth('removePort',['java.lang.String'],[]);
	return $$self->$removePort($portName);
}

sub removeRouteCase {
	my ($self,$routeCaseIdentifier) = @_;
	my $removeRouteCase = JPL::AutoLoader::getmeth('removeRouteCase',['java.lang.String'],[]);
	return $$self->$removeRouteCase($routeCaseIdentifier);
}

sub setExecErrHandling {
	my ($self,$execErrHandling) = @_;
	my $setExecErrHandling = JPL::AutoLoader::getmeth('setExecErrHandling',['int'],[]);
	return $$self->$setExecErrHandling($execErrHandling);
}

sub setExecMethodId {
	my ($self,$execMethodId) = @_;
	my $setExecMethodId = JPL::AutoLoader::getmeth('setExecMethodId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setExecMethodId($$execMethodId);
}

sub setExecSaveResults {
	my ($self,$execSaveResults) = @_;
	my $setExecSaveResults = JPL::AutoLoader::getmeth('setExecSaveResults',['boolean'],[]);
	return $$self->$setExecSaveResults($execSaveResults);
}

sub setExecTimeOut {
	my ($self,$execTimeOut) = @_;
	my $setExecTimeOut = JPL::AutoLoader::getmeth('setExecTimeOut',['int'],[]);
	return $$self->$setExecTimeOut($execTimeOut);
}

sub setExecType {
	my ($self,$execType) = @_;
	my $setExecType = JPL::AutoLoader::getmeth('setExecType',['int'],[]);
	return $$self->$setExecType($execType);
}

sub setPerformerFlag {
	my ($self,$performerFlag) = @_;
	my $setPerformerFlag = JPL::AutoLoader::getmeth('setPerformerFlag',['int'],[]);
	return $$self->$setPerformerFlag($performerFlag);
}

sub setPerformerName {
	my ($self,$performerName) = @_;
	my $setPerformerName = JPL::AutoLoader::getmeth('setPerformerName',['java.lang.String'],[]);
	return $$self->$setPerformerName($performerName);
}

sub setPerformerType {
	my ($self,$performerType) = @_;
	my $setPerformerType = JPL::AutoLoader::getmeth('setPerformerType',['int'],[]);
	return $$self->$setPerformerType($performerType);
}

sub setPostTimer {
	my ($self,$postTimer) = @_;
	my $setPostTimer = JPL::AutoLoader::getmeth('setPostTimer',['int'],[]);
	return $$self->$setPostTimer($postTimer);
}

sub setPreTimer {
	my ($self,$preTimer) = @_;
	my $setPreTimer = JPL::AutoLoader::getmeth('setPreTimer',['int'],[]);
	return $$self->$setPreTimer($preTimer);
}

sub setPrivate {
	my ($self,$isPrivate) = @_;
	my $setPrivate = JPL::AutoLoader::getmeth('setPrivate',['boolean'],[]);
	return $$self->$setPrivate($isPrivate);
}

sub setRepeatableInvoke {
	my ($self,$repeatableInvoke) = @_;
	my $setRepeatableInvoke = JPL::AutoLoader::getmeth('setRepeatableInvoke',['boolean'],[]);
	return $$self->$setRepeatableInvoke($repeatableInvoke);
}

sub setResolvePackageName {
	my ($self,$resolvePkgName) = @_;
	my $setResolvePackageName = JPL::AutoLoader::getmeth('setResolvePackageName',['java.lang.String'],[]);
	return $$self->$setResolvePackageName($resolvePkgName);
}

sub setResolveType {
	my ($self,$resolveType) = @_;
	my $setResolveType = JPL::AutoLoader::getmeth('setResolveType',['int'],[]);
	return $$self->$setResolveType($resolveType);
}

sub setSignoffRequired {
	my ($self,$signoffRequired) = @_;
	my $setSignoffRequired = JPL::AutoLoader::getmeth('setSignoffRequired',['boolean'],[]);
	return $$self->$setSignoffRequired($signoffRequired);
}

sub setTransitionType {
	my ($self,$transitionType) = @_;
	my $setTransitionType = JPL::AutoLoader::getmeth('setTransitionType',['int'],[]);
	return $$self->$setTransitionType($transitionType);
}

sub setTriggerEvent {
	my ($self,$triggerEvent) = @_;
	my $setTriggerEvent = JPL::AutoLoader::getmeth('setTriggerEvent',['java.lang.String'],[]);
	return $$self->$setTriggerEvent($triggerEvent);
}

sub setTriggerThreshold {
	my ($self,$triggerThreshold) = @_;
	my $setTriggerThreshold = JPL::AutoLoader::getmeth('setTriggerThreshold',['int'],[]);
	return $$self->$setTriggerThreshold($triggerThreshold);
}

sub uninstall {
	my $self = shift;
	my $uninstall = JPL::AutoLoader::getmeth('uninstall',[],[]);
	return $$self->$uninstall();
}

sub validate {
	my $self = shift;
	my $validate = JPL::AutoLoader::getmeth('validate',[],[]);
	return $$self->$validate();
}


1;
#__EOF__