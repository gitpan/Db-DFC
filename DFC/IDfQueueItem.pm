# ------------------------------------------------------------------- #
# IDfQueueItem
# com.documentum.fc.client.IDfQueueItem
# ------------------------------------------------------------------- #
package IDfQueueItem;
@ISA = (IDfPersistentObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfQueueItem';
use JPL::Class 'com::documentum::fc::common::IDfTime';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfWorkitem';


sub getAContentType {
	my $self = shift;
	my $getAContentType = JPL::AutoLoader::getmeth('getAContentType',[],['java.lang.String']);
	return $$self->$getAContentType();
}

sub getActualStartDate {
	my $self = shift;
	my $getActualStartDate = JPL::AutoLoader::getmeth('getActualStartDate',[],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getActualStartDate();
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getContentType {
	my $self = shift;
	my $getContentType = JPL::AutoLoader::getmeth('getContentType',[],['java.lang.String']);
	return $$self->$getContentType();
}

sub getDateSent {
	my $self = shift;
	my $getDateSent = JPL::AutoLoader::getmeth('getDateSent',[],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getDateSent();
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getDependencyType {
	my $self = shift;
	my $getDependencyType = JPL::AutoLoader::getmeth('getDependencyType',[],['java.lang.String']);
	return $$self->$getDependencyType();
}

sub getDequeuedBy {
	my $self = shift;
	my $getDequeuedBy = JPL::AutoLoader::getmeth('getDequeuedBy',[],['java.lang.String']);
	return $$self->$getDequeuedBy();
}

sub getDequeuedDate {
	my $self = shift;
	my $getDequeuedDate = JPL::AutoLoader::getmeth('getDequeuedDate',[],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getDequeuedDate();
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

sub getEvent {
	my $self = shift;
	my $getEvent = JPL::AutoLoader::getmeth('getEvent',[],['java.lang.String']);
	return $$self->$getEvent();
}

sub getInstructionPage {
	my $self = shift;
	my $getInstructionPage = JPL::AutoLoader::getmeth('getInstructionPage',[],['int']);
	return $$self->$getInstructionPage();
}

sub getItemId {
	my $self = shift;
	my $getItemId = JPL::AutoLoader::getmeth('getItemId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getItemId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getItemName {
	my $self = shift;
	my $getItemName = JPL::AutoLoader::getmeth('getItemName',[],['java.lang.String']);
	return $$self->$getItemName();
}

sub getItemType {
	my $self = shift;
	my $getItemType = JPL::AutoLoader::getmeth('getItemType',[],['java.lang.String']);
	return $$self->$getItemType();
}

sub getMessage {
	my $self = shift;
	my $getMessage = JPL::AutoLoader::getmeth('getMessage',[],['java.lang.String']);
	return $$self->$getMessage();
}

sub getName {
	my $self = shift;
	my $getName = JPL::AutoLoader::getmeth('getName',[],['java.lang.String']);
	return $$self->$getName();
}

sub getNextTasksType {
	my $self = shift;
	my $getNextTasksType = JPL::AutoLoader::getmeth('getNextTasksType',[],['java.lang.String']);
	return $$self->$getNextTasksType();
}

sub getOperations {
	my $self = shift;
	my $getOperations = JPL::AutoLoader::getmeth('getOperations',[],['java.lang.String']);
	return $$self->$getOperations();
}

sub getPlanStartDate {
	my $self = shift;
	my $getPlanStartDate = JPL::AutoLoader::getmeth('getPlanStartDate',[],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getPlanStartDate();
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getPosition {
	my $self = shift;
	my $getPosition = JPL::AutoLoader::getmeth('getPosition',[],['double']);
	return $$self->$getPosition();
}

sub getPriority {
	my $self = shift;
	my $getPriority = JPL::AutoLoader::getmeth('getPriority',[],['int']);
	return $$self->$getPriority();
}

sub getRouterId {
	my $self = shift;
	my $getRouterId = JPL::AutoLoader::getmeth('getRouterId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getRouterId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getSentBy {
	my $self = shift;
	my $getSentBy = JPL::AutoLoader::getmeth('getSentBy',[],['java.lang.String']);
	return $$self->$getSentBy();
}

sub getSignOffDate {
	my $self = shift;
	my $getSignOffDate = JPL::AutoLoader::getmeth('getSignOffDate',[],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getSignOffDate();
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getSignOffUser {
	my $self = shift;
	my $getSignOffUser = JPL::AutoLoader::getmeth('getSignOffUser',[],['java.lang.String']);
	return $$self->$getSignOffUser();
}

sub getSourceDocbase {
	my $self = shift;
	my $getSourceDocbase = JPL::AutoLoader::getmeth('getSourceDocbase',[],['java.lang.String']);
	return $$self->$getSourceDocbase();
}

sub getSourceEvent {
	my $self = shift;
	my $getSourceEvent = JPL::AutoLoader::getmeth('getSourceEvent',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getSourceEvent();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getSourceStamp {
	my $self = shift;
	my $getSourceStamp = JPL::AutoLoader::getmeth('getSourceStamp',[],['int']);
	return $$self->$getSourceStamp();
}

sub getStamp {
	my $self = shift;
	my $getStamp = JPL::AutoLoader::getmeth('getStamp',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getStamp();
	if ($tmp) {
		bless(\$tmp,IDfId);
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

sub getTargetDocbase {
	my $self = shift;
	my $getTargetDocbase = JPL::AutoLoader::getmeth('getTargetDocbase',[],['java.lang.String']);
	return $$self->$getTargetDocbase();
}

sub getTaskName {
	my $self = shift;
	my $getTaskName = JPL::AutoLoader::getmeth('getTaskName',[],['java.lang.String']);
	return $$self->$getTaskName();
}

sub getTaskNumber {
	my $self = shift;
	my $getTaskNumber = JPL::AutoLoader::getmeth('getTaskNumber',[],['java.lang.String']);
	return $$self->$getTaskNumber();
}

sub getTaskState {
	my $self = shift;
	my $getTaskState = JPL::AutoLoader::getmeth('getTaskState',[],['java.lang.String']);
	return $$self->$getTaskState();
}

sub getTaskType {
	my $self = shift;
	my $getTaskType = JPL::AutoLoader::getmeth('getTaskType',[],['java.lang.String']);
	return $$self->$getTaskType();
}

sub getWorkitem {
	my $self = shift;
	my $getWorkitem = JPL::AutoLoader::getmeth('getWorkitem',[],['com.documentum.fc.client.IDfWorkitem']);
	my $tmp = $$self->$getWorkitem();
	if ($tmp) {
		bless(\$tmp,IDfWorkitem);
		return \$tmp;
	} else {
		return undef;
	}
}

sub isDeleteFlag {
	my $self = shift;
	my $isDeleteFlag = JPL::AutoLoader::getmeth('isDeleteFlag',[],['boolean']);
	return $$self->$isDeleteFlag();
}

sub isReadFlag {
	my $self = shift;
	my $isReadFlag = JPL::AutoLoader::getmeth('isReadFlag',[],['boolean']);
	return $$self->$isReadFlag();
}

sub isRemotePending {
	my $self = shift;
	my $isRemotePending = JPL::AutoLoader::getmeth('isRemotePending',[],['boolean']);
	return $$self->$isRemotePending();
}

sub isSignOffRequired {
	my $self = shift;
	my $isSignOffRequired = JPL::AutoLoader::getmeth('isSignOffRequired',[],['boolean']);
	return $$self->$isSignOffRequired();
}


1;
#__EOF__