# ------------------------------------------------------------------- #
# IDfOperation
# com.documentum.operations.IDfOperation
# ------------------------------------------------------------------- #
package IDfOperation;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfOperation';
use JPL::Class 'com::documentum::operations::IDfOperationNode';
use JPL::Class 'com::documentum::fc::common::IDfList';
use JPL::Class 'com::documentum::fc::common::IDfProperties';
use JPL::Class 'com::documentum::operations::IDfOperationError';
use JPL::Class 'com::documentum::fc::common::IDfException';
use JPL::Class 'com::documentum::operations::IDfOperationMonitor';


sub abort {
	my $self = shift;
	my $abort = JPL::AutoLoader::getmeth('abort',[],[]);
	return $$self->$abort();
}

sub add {
	my ($self,$newObject) = @_;
	my $add = JPL::AutoLoader::getmeth('add',['java.lang.Object'],['com.documentum.operations.IDfOperationNode']);
	my $tmp = $$self->$add($newObject);
	if ($tmp) {
		bless(\$tmp,IDfOperationNode);
		return \$tmp;
	} else {
		return undef;
	}
}

sub execute {
	my $self = shift;
	my $execute = JPL::AutoLoader::getmeth('execute',[],['boolean']);
	return $$self->$execute();
}

sub getDescription {
	my $self = shift;
	my $getDescription = JPL::AutoLoader::getmeth('getDescription',[],['java.lang.String']);
	return $$self->$getDescription();
}

sub getErrors {
	my $self = shift;
	my $getErrors = JPL::AutoLoader::getmeth('getErrors',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getErrors();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getName {
	my $self = shift;
	my $getName = JPL::AutoLoader::getmeth('getName',[],['java.lang.String']);
	return $$self->$getName();
}

sub getNodes {
	my $self = shift;
	my $getNodes = JPL::AutoLoader::getmeth('getNodes',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getNodes();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getOperationType {
	my $self = shift;
	my $getOperationType = JPL::AutoLoader::getmeth('getOperationType',[],['java.lang.String']);
	return $$self->$getOperationType();
}

sub getProperties {
	my $self = shift;
	my $getProperties = JPL::AutoLoader::getmeth('getProperties',[],['com.documentum.fc.common.IDfProperties']);
	my $tmp = $$self->$getProperties();
	if ($tmp) {
		bless(\$tmp,IDfProperties);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getRootNodes {
	my $self = shift;
	my $getRootNodes = JPL::AutoLoader::getmeth('getRootNodes',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getRootNodes();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getSteps {
	my $self = shift;
	my $getSteps = JPL::AutoLoader::getmeth('getSteps',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getSteps();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub logError {
	my ($self,$error) = @_;
	my $logError = JPL::AutoLoader::getmeth('logError',['com.documentum.operations.IDfOperationError'],[]);
	return $$self->$logError($$error);
}

sub removeNode {
	my ($self,$nodeToRemove) = @_;
	my $removeNode = JPL::AutoLoader::getmeth('removeNode',['com.documentum.operations.IDfOperationNode'],[]);
	return $$self->$removeNode($$nodeToRemove);
}

sub reportError {
	my ($self,$node,$errorCode,$message,$dfException) = @_;
	my $reportError = JPL::AutoLoader::getmeth('reportError',['com.documentum.operations.IDfOperationNode','int','java.lang.String','com.documentum.fc.common.IDfException'],[]);
	return $$self->$reportError($$node,$errorCode,$message,$$dfException);
}

sub resetErrors {
	my $self = shift;
	my $resetErrors = JPL::AutoLoader::getmeth('resetErrors',[],[]);
	return $$self->$resetErrors();
}

sub setOperationMonitor {
	my ($self,$monitor) = @_;
	my $setOperationMonitor = JPL::AutoLoader::getmeth('setOperationMonitor',['com.documentum.operations.IDfOperationMonitor'],['com.documentum.operations.IDfOperationMonitor']);
	my $tmp = $$self->$setOperationMonitor($$monitor);
	if ($tmp) {
		bless(\$tmp,IDfOperationMonitor);
		return \$tmp;
	} else {
		return undef;
	}
}

sub succeeded {
	my ($self,$object) = @_;
	my $succeeded = JPL::AutoLoader::getmeth('succeeded',['java.lang.Object'],['boolean']);
	return $$self->$succeeded($object);
}



1;
#__EOF__