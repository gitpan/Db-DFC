# ------------------------------------------------------------------- #
# IDfWorkflow
# com.documentum.fc.client.IDfWorkflow
# ------------------------------------------------------------------- #
package IDfWorkflow;
@ISA = (IDfPersistentObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfWorkflow';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfList';
use JPL::Class 'com::documentum::fc::common::IDfTime';


sub abort {
	my $self = shift;
	my $abort = JPL::AutoLoader::getmeth('abort',[],[]);
	return $$self->$abort();
}

sub addPackage {
	my ($self,$startActivityName,$inputPortName,$packageName,$packageType,$noteText,$notePersistent,$componentIds) = @_;
	my $addPackage = JPL::AutoLoader::getmeth('addPackage',['java.lang.String','java.lang.String','java.lang.String','java.lang.String','java.lang.String','boolean','com.documentum.fc.common.IDfList'],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$addPackage($startActivityName,$inputPortName,$packageName,$packageType,$noteText,$notePersistent,$$componentIds);
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub execute {
	my $self = shift;
	my $execute = JPL::AutoLoader::getmeth('execute',[],[]);
	return $$self->$execute();
}

sub getActDefId {
	my ($self,$valueIndex) = @_;
	my $getActDefId = JPL::AutoLoader::getmeth('getActDefId',['int'],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getActDefId($valueIndex);
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getActErrorno {
	my ($self,$valueIndex) = @_;
	my $getActErrorno = JPL::AutoLoader::getmeth('getActErrorno',['int'],['int']);
	return $$self->$getActErrorno($valueIndex);
}

sub getActName {
	my ($self,$valueIndex) = @_;
	my $getActName = JPL::AutoLoader::getmeth('getActName',['int'],['java.lang.String']);
	return $$self->$getActName($valueIndex);
}

sub getActSeqno {
	my ($self,$valueIndex) = @_;
	my $getActSeqno = JPL::AutoLoader::getmeth('getActSeqno',['int'],['int']);
	return $$self->$getActSeqno($valueIndex);
}

sub getActState {
	my ($self,$valueIndex) = @_;
	my $getActState = JPL::AutoLoader::getmeth('getActState',['int'],['int']);
	return $$self->$getActState($valueIndex);
}

sub getActivityCount {
	my $self = shift;
	my $getActivityCount = JPL::AutoLoader::getmeth('getActivityCount',[],['int']);
	return $$self->$getActivityCount();
}

sub getAliasSetId {
	my $self = shift;
	my $getAliasSetId = JPL::AutoLoader::getmeth('getAliasSetId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getAliasSetId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getCompleteWitem {
	my ($self,$valueIndex) = @_;
	my $getCompleteWitem = JPL::AutoLoader::getmeth('getCompleteWitem',['int'],['int']);
	return $$self->$getCompleteWitem($valueIndex);
}

sub getCreatorName {
	my $self = shift;
	my $getCreatorName = JPL::AutoLoader::getmeth('getCreatorName',[],['java.lang.String']);
	return $$self->$getCreatorName();
}

sub getLastPerformer {
	my ($self,$valueIndex) = @_;
	my $getLastPerformer = JPL::AutoLoader::getmeth('getLastPerformer',['int'],['java.lang.String']);
	return $$self->$getLastPerformer($valueIndex);
}

sub getLastWitemId {
	my ($self,$valueIndex) = @_;
	my $getLastWitemId = JPL::AutoLoader::getmeth('getLastWitemId',['int'],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getLastWitemId($valueIndex);
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getNextSeqno {
	my $self = shift;
	my $getNextSeqno = JPL::AutoLoader::getmeth('getNextSeqno',[],['int']);
	return $$self->$getNextSeqno();
}

sub getObjectName {
	my $self = shift;
	my $getObjectName = JPL::AutoLoader::getmeth('getObjectName',[],['java.lang.String']);
	return $$self->$getObjectName();
}

sub getPerformerFlag {
	my ($self,$valueIndex) = @_;
	my $getPerformerFlag = JPL::AutoLoader::getmeth('getPerformerFlag',['int'],['int']);
	return $$self->$getPerformerFlag($valueIndex);
}

sub getPostTimer {
	my ($self,$valueIndex) = @_;
	my $getPostTimer = JPL::AutoLoader::getmeth('getPostTimer',['int'],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getPostTimer($valueIndex);
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getPreTimer {
	my ($self,$valueIndex) = @_;
	my $getPreTimer = JPL::AutoLoader::getmeth('getPreTimer',['int'],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getPreTimer($valueIndex);
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getProcessId {
	my $self = shift;
	my $getProcessId = JPL::AutoLoader::getmeth('getProcessId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getProcessId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getRepeatInvoke {
	my ($self,$valueIndex) = @_;
	my $getRepeatInvoke = JPL::AutoLoader::getmeth('getRepeatInvoke',['int'],['boolean']);
	return $$self->$getRepeatInvoke($valueIndex);
}

sub getRuntimeState {
	my $self = shift;
	my $getRuntimeState = JPL::AutoLoader::getmeth('getRuntimeState',[],['int']);
	return $$self->$getRuntimeState();
}

sub getStartDate {
	my $self = shift;
	my $getStartDate = JPL::AutoLoader::getmeth('getStartDate',[],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getStartDate();
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getSupervisorName {
	my $self = shift;
	my $getSupervisorName = JPL::AutoLoader::getmeth('getSupervisorName',[],['java.lang.String']);
	return $$self->$getSupervisorName();
}

sub getTotalWitem {
	my ($self,$valueIndex) = @_;
	my $getTotalWitem = JPL::AutoLoader::getmeth('getTotalWitem',['int'],['int']);
	return $$self->$getTotalWitem($valueIndex);
}

sub getTriggerInput {
	my ($self,$valueIndex) = @_;
	my $getTriggerInput = JPL::AutoLoader::getmeth('getTriggerInput',['int'],['int']);
	return $$self->$getTriggerInput($valueIndex);
}

sub getTriggerRevert {
	my ($self,$valueIndex) = @_;
	my $getTriggerRevert = JPL::AutoLoader::getmeth('getTriggerRevert',['int'],['int']);
	return $$self->$getTriggerRevert($valueIndex);
}

sub getTriggerThresh {
	my ($self,$valueIndex) = @_;
	my $getTriggerThresh = JPL::AutoLoader::getmeth('getTriggerThresh',['int'],['int']);
	return $$self->$getTriggerThresh($valueIndex);
}

sub halt {
	my ($self,$activitySeqNo) = @_;
	my $halt = JPL::AutoLoader::getmeth('halt',['int'],[]);
	return $$self->$halt($activitySeqNo);
}

sub haltAll {
	my $self = shift;
	my $haltAll = JPL::AutoLoader::getmeth('haltAll',[],[]);
	return $$self->$haltAll();
}

sub queue {
	my ($self,$supervisor,$eventType,$priority,$sendMail,$dueDate,$message) = @_;
	my $queue = JPL::AutoLoader::getmeth('queue',['java.lang.String','int','int','boolean','com.documentum.fc.common.IDfTime','java.lang.String'],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$queue($supervisor,$eventType,$priority,$sendMail,$$dueDate,$message);
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub removePackage {
	my ($self,$startActivityName,$portName,$packageName) = @_;
	my $removePackage = JPL::AutoLoader::getmeth('removePackage',['java.lang.String','java.lang.String','java.lang.String'],[]);
	return $$self->$removePackage($startActivityName,$portName,$packageName);
}

sub restart {
	my ($self,$activitySeqNo) = @_;
	my $restart = JPL::AutoLoader::getmeth('restart',['int'],[]);
	return $$self->$restart($activitySeqNo);
}

sub resume {
	my ($self,$activitySeqNo) = @_;
	my $resume = JPL::AutoLoader::getmeth('resume',['int'],[]);
	return $$self->$resume($activitySeqNo);
}

sub resumeAll {
	my $self = shift;
	my $resumeAll = JPL::AutoLoader::getmeth('resumeAll',[],[]);
	return $$self->$resumeAll();
}

sub setObjectName {
	my ($self,$objectName) = @_;
	my $setObjectName = JPL::AutoLoader::getmeth('setObjectName',['java.lang.String'],[]);
	return $$self->$setObjectName($objectName);
}

sub setProcessId {
	my ($self,$processId) = @_;
	my $setProcessId = JPL::AutoLoader::getmeth('setProcessId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setProcessId($$processId);
}

sub setSupervisorName {
	my ($self,$supervisorName) = @_;
	my $setSupervisorName = JPL::AutoLoader::getmeth('setSupervisorName',['java.lang.String'],[]);
	return $$self->$setSupervisorName($supervisorName);
}


1;
#__EOF__