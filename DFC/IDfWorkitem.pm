# ------------------------------------------------------------------- #
# IDfWorkitem
# com.documentum.fc.client.IDfWorkitem
# ------------------------------------------------------------------- #
package IDfWorkitem;
@ISA = (IDfPersistentObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfWorkitem';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfTime';
use JPL::Class 'com::documentum::fc::common::IDfList';
use JPL::Class 'com::documentum::fc::client::IDfActivity';
use JPL::Class 'com::documentum::fc::client::IDfCollection';
use JPL::Class 'com::documentum::fc::client::IDfPackage';


sub acquire {
	my $self = shift;
	my $acquire = JPL::AutoLoader::getmeth('acquire',[],[]);
	return $$self->$acquire();
}

sub complete {
	my $self = shift;
	my $complete = JPL::AutoLoader::getmeth('complete',[],[]);
	return $$self->$complete();
}

sub completeEx {
	my ($self,$returnValue,$execOSError,$execResultId) = @_;
	my $completeEx = JPL::AutoLoader::getmeth('completeEx',['int','java.lang.String','com.documentum.fc.common.IDfId'],[]);
	return $$self->$completeEx($returnValue,$execOSError,$$execResultId);
}

sub delegateTask {
	my ($self,$user) = @_;
	my $delegateTask = JPL::AutoLoader::getmeth('delegateTask',['java.lang.String'],[]);
	return $$self->$delegateTask($user);
}

sub getActDefId {
	my $self = shift;
	my $getActDefId = JPL::AutoLoader::getmeth('getActDefId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getActDefId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getActSeqno {
	my $self = shift;
	my $getActSeqno = JPL::AutoLoader::getmeth('getActSeqno',[],['int']);
	return $$self->$getActSeqno();
}

sub getActivity {
	my $self = shift;
	my $getActivity = JPL::AutoLoader::getmeth('getActivity',[],['com.documentum.fc.client.IDfActivity']);
	my $tmp = $$self->$getActivity();
	if ($tmp) {
		bless(\$tmp,IDfActivity);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getAutoMethodId {
	my $self = shift;
	my $getAutoMethodId = JPL::AutoLoader::getmeth('getAutoMethodId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getAutoMethodId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getCreationDate {
	my $self = shift;
	my $getCreationDate = JPL::AutoLoader::getmeth('getCreationDate',[],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getCreationDate();
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getDueDate {
	my $self = shift;
	my $getDueDate = JPL::AutoLoader::getmeth('getDueDate',[],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getDueDate();
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getExecOsError {
	my $self = shift;
	my $getExecOsError = JPL::AutoLoader::getmeth('getExecOsError',[],['java.lang.String']);
	return $$self->$getExecOsError();
}

sub getExecResultId {
	my $self = shift;
	my $getExecResultId = JPL::AutoLoader::getmeth('getExecResultId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getExecResultId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getExtendedPerformer {
	my ($self,$valueIndex) = @_;
	my $getExtendedPerformer = JPL::AutoLoader::getmeth('getExtendedPerformer',['int'],['java.lang.String']);
	return $$self->$getExtendedPerformer($valueIndex);
}

sub getExtendedPerformerCount {
	my $self = shift;
	my $getExtendedPerformerCount = JPL::AutoLoader::getmeth('getExtendedPerformerCount',[],['int']);
	return $$self->$getExtendedPerformerCount();
}

sub getForwardActivities {
	my $self = shift;
	my $getForwardActivities = JPL::AutoLoader::getmeth('getForwardActivities',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getForwardActivities();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getMissingOutputPackages {
	my $self = shift;
	my $getMissingOutputPackages = JPL::AutoLoader::getmeth('getMissingOutputPackages',[],['com.documentum.fc.client.IDfCollection']);
	my $tmp = $$self->$getMissingOutputPackages();
	if ($tmp) {
		bless(\$tmp,IDfCollection);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getNextActivityNames {
	my $self = shift;
	my $getNextActivityNames = JPL::AutoLoader::getmeth('getNextActivityNames',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getNextActivityNames();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getOutputPort {
	my ($self,$valueIndex) = @_;
	my $getOutputPort = JPL::AutoLoader::getmeth('getOutputPort',['int'],['java.lang.String']);
	return $$self->$getOutputPort($valueIndex);
}

sub getOutputPortCount {
	my $self = shift;
	my $getOutputPortCount = JPL::AutoLoader::getmeth('getOutputPortCount',[],['int']);
	return $$self->$getOutputPortCount();
}

sub getPackage {
	my ($self,$packageId) = @_;
	my $getPackage = JPL::AutoLoader::getmeth('getPackage',['com.documentum.fc.common.IDfId'],['com.documentum.fc.client.IDfPackage']);
	my $tmp = $$self->$getPackage($$packageId);
	if ($tmp) {
		bless(\$tmp,IDfPackage);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getPackages {
	my ($self,$additionalAttributes) = @_;
	my $getPackages = JPL::AutoLoader::getmeth('getPackages',['java.lang.String'],['com.documentum.fc.client.IDfCollection']);
	my $tmp = $$self->$getPackages($additionalAttributes);
	if ($tmp) {
		bless(\$tmp,IDfCollection);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getPerformerName {
	my $self = shift;
	my $getPerformerName = JPL::AutoLoader::getmeth('getPerformerName',[],['java.lang.String']);
	return $$self->$getPerformerName();
}

sub getPreviousActivityNames {
	my $self = shift;
	my $getPreviousActivityNames = JPL::AutoLoader::getmeth('getPreviousActivityNames',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getPreviousActivityNames();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getPriority {
	my $self = shift;
	my $getPriority = JPL::AutoLoader::getmeth('getPriority',[],['int']);
	return $$self->$getPriority();
}

sub getQueueItemId {
	my $self = shift;
	my $getQueueItemId = JPL::AutoLoader::getmeth('getQueueItemId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getQueueItemId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getRejectActivities {
	my $self = shift;
	my $getRejectActivities = JPL::AutoLoader::getmeth('getRejectActivities',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getRejectActivities();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getReturnValue {
	my $self = shift;
	my $getReturnValue = JPL::AutoLoader::getmeth('getReturnValue',[],['int']);
	return $$self->$getReturnValue();
}

sub getRuntimeState {
	my $self = shift;
	my $getRuntimeState = JPL::AutoLoader::getmeth('getRuntimeState',[],['int']);
	return $$self->$getRuntimeState();
}

sub getWorkflowId {
	my $self = shift;
	my $getWorkflowId = JPL::AutoLoader::getmeth('getWorkflowId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getWorkflowId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub isDelegatable {
	my $self = shift;
	my $isDelegatable = JPL::AutoLoader::getmeth('isDelegatable',[],['boolean']);
	return $$self->$isDelegatable();
}

sub isExecLaunch {
	my $self = shift;
	my $isExecLaunch = JPL::AutoLoader::getmeth('isExecLaunch',[],['boolean']);
	return $$self->$isExecLaunch();
}

sub isExecTimeOut {
	my $self = shift;
	my $isExecTimeOut = JPL::AutoLoader::getmeth('isExecTimeOut',[],['boolean']);
	return $$self->$isExecTimeOut();
}

sub isManualExecution {
	my $self = shift;
	my $isManualExecution = JPL::AutoLoader::getmeth('isManualExecution',[],['boolean']);
	return $$self->$isManualExecution();
}

sub isManualTransition {
	my $self = shift;
	my $isManualTransition = JPL::AutoLoader::getmeth('isManualTransition',[],['boolean']);
	return $$self->$isManualTransition();
}

sub isRepeatable {
	my $self = shift;
	my $isRepeatable = JPL::AutoLoader::getmeth('isRepeatable',[],['boolean']);
	return $$self->$isRepeatable();
}

sub isSignOffRequired {
	my $self = shift;
	my $isSignOffRequired = JPL::AutoLoader::getmeth('isSignOffRequired',[],['boolean']);
	return $$self->$isSignOffRequired();
}

sub pause {
	my $self = shift;
	my $pause = JPL::AutoLoader::getmeth('pause',[],[]);
	return $$self->$pause();
}

sub removePackage {
	my ($self,$packageName) = @_;
	my $removePackage = JPL::AutoLoader::getmeth('removePackage',['java.lang.String'],[]);
	return $$self->$removePackage($packageName);
}

sub repeat {
	my ($self,$list) = @_;
	my $repeat = JPL::AutoLoader::getmeth('repeat',['com.documentum.fc.common.IDfList'],[]);
	return $$self->$repeat($$list);
}

sub resume {
	my $self = shift;
	my $resume = JPL::AutoLoader::getmeth('resume',[],[]);
	return $$self->$resume();
}

sub setOutput {
	my ($self,$list) = @_;
	my $setOutput = JPL::AutoLoader::getmeth('setOutput',['com.documentum.fc.common.IDfList'],[]);
	return $$self->$setOutput($$list);
}

sub setOutputByActivities {
	my ($self,$actList) = @_;
	my $setOutputByActivities = JPL::AutoLoader::getmeth('setOutputByActivities',['com.documentum.fc.common.IDfList'],[]);
	return $$self->$setOutputByActivities($$actList);
}


1;
#__EOF__