# ------------------------------------------------------------------- #
# IDfWorkflowBuilder
# com.documentum.fc.client.IDfWorkflowBuilder
# ------------------------------------------------------------------- #
package IDfWorkflowBuilder;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfWorkflowBuilder';
use JPL::Class 'com::documentum::fc::client::IDfProcess';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfList';


sub getProcess {
	my $self = shift;
	my $getProcess = JPL::AutoLoader::getmeth('getProcess',[],['com.documentum.fc.client.IDfProcess']);
	my $tmp = $$self->$getProcess();
	if ($tmp) {
		bless(\$tmp,IDfProcess);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getStartActivityIds {
	my $self = shift;
	my $getStartActivityIds = JPL::AutoLoader::getmeth('getStartActivityIds',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getStartActivityIds();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getStartActivityNames {
	my $self = shift;
	my $getStartActivityNames = JPL::AutoLoader::getmeth('getStartActivityNames',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getStartActivityNames();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getStartStatus {
	my $self = shift;
	my $getStartStatus = JPL::AutoLoader::getmeth('getStartStatus',[],['int']);
	return $$self->$getStartStatus();
}

sub getWorkflow {
	my $self = shift;
	my $getWorkflow = JPL::AutoLoader::getmeth('getWorkflow',[],['com.documentum.fc.client.IDfWorkflow']);
	my $tmp = $$self->$getWorkflow();
	if ($tmp) {
		bless(\$tmp,IDfWorkflow);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getWorkflowAliasSetId {
	my $self = shift;
	my $getWorkflowAliasSetId = JPL::AutoLoader::getmeth('getWorkflowAliasSetId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getWorkflowAliasSetId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub initWorkflow {
	my $self = shift;
	my $initWorkflow = JPL::AutoLoader::getmeth('initWorkflow',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$initWorkflow();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub isRunnable {
	my $self = shift;
	my $isRunnable = JPL::AutoLoader::getmeth('isRunnable',[],['boolean']);
	return $$self->$isRunnable();
}

sub removePackage {
	my ($self,$activityName,$portName,$packagename) = @_;
	my $removePackage = JPL::AutoLoader::getmeth('removePackage',['java.lang.String','java.lang.String','java.lang.String'],[]);
	return $$self->$removePackage($activityName,$portName,$packagename);
}

sub runWorkflow {
	my $self = shift;
	my $runWorkflow = JPL::AutoLoader::getmeth('runWorkflow',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$runWorkflow();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub startWorkflow {
	my $self = shift;
	my $startWorkflow = JPL::AutoLoader::getmeth('startWorkflow',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$startWorkflow();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}


1;
#__EOF__