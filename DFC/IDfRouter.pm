# ------------------------------------------------------------------- #
# IDfRouter
# com.documentum.fc.client.IDfRouter
# ------------------------------------------------------------------- #
package IDfRouter;
@ISA = (IDfSysObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfRouter';
use JPL::Class 'com::documentum::fc::common::IDfList';


sub acquire {
	my ($self,$taskNumber) = @_;
	my $acquire = JPL::AutoLoader::getmeth('acquire',['int'],[]);
	return $$self->$acquire($taskNumber);
}

sub appendTask {
	my $self = shift;
	my $appendTask = JPL::AutoLoader::getmeth('appendTask',[],['int']);
	return $$self->$appendTask();
}

sub end {
	my $self = shift;
	my $end = JPL::AutoLoader::getmeth('end',[],[]);
	return $$self->$end();
}

sub force {
	my ($self,$taskNumber,$message) = @_;
	my $force = JPL::AutoLoader::getmeth('force',['int','java.lang.String'],[]);
	return $$self->$force($taskNumber,$message);
}

sub forward {
	my ($self,$currentTask,$additionalTask,$message) = @_;
	my $forward = JPL::AutoLoader::getmeth('forward',['int','com.documentum.fc.common.IDfList','java.lang.String'],[]);
	return $$self->$forward($currentTask,$$additionalTask,$message);
}

sub halt {
	my $self = shift;
	my $halt = JPL::AutoLoader::getmeth('halt',[],[]);
	return $$self->$halt();
}

sub insertTask {
	my ($self,$position) = @_;
	my $insertTask = JPL::AutoLoader::getmeth('insertTask',['int'],[]);
	return $$self->$insertTask($position);
}

sub pause {
	my ($self,$taskNumber) = @_;
	my $pause = JPL::AutoLoader::getmeth('pause',['int'],[]);
	return $$self->$pause($taskNumber);
}

sub reAssign {
	my ($self,$taskNumber,$taskOwner,$message) = @_;
	my $reAssign = JPL::AutoLoader::getmeth('reAssign',['int','java.lang.String','java.lang.String'],[]);
	return $$self->$reAssign($taskNumber,$taskOwner,$message);
}

sub removeTask {
	my ($self,$position) = @_;
	my $removeTask = JPL::AutoLoader::getmeth('removeTask',['int'],[]);
	return $$self->$removeTask($position);
}

sub resumeRouter {
	my ($self,$taskNumber) = @_;
	my $resumeRouter = JPL::AutoLoader::getmeth('resumeRouter',['int'],[]);
	return $$self->$resumeRouter($taskNumber);
}

sub reverse {
	my ($self,$currentTask,$previousTask,$message) = @_;
	my $reverse = JPL::AutoLoader::getmeth('reverse',['int','com.documentum.fc.common.IDfList','java.lang.String'],[]);
	return $$self->$reverse($currentTask,$$previousTask,$message);
}

sub signOffRouter {
	my ($self,$taskNumber,$userOSName,$password) = @_;
	my $signOffRouter = JPL::AutoLoader::getmeth('signOffRouter',['int','java.lang.String','java.lang.String'],[]);
	return $$self->$signOffRouter($taskNumber,$userOSName,$password);
}

sub start {
	my ($self,$message) = @_;
	my $start = JPL::AutoLoader::getmeth('start',['java.lang.String'],[]);
	return $$self->$start($message);
}

sub validateRouter {
	my ($self,$externalApps) = @_;
	my $validateRouter = JPL::AutoLoader::getmeth('validateRouter',['boolean'],[]);
	return $$self->$validateRouter($externalApps);
}


1;
#__EOF__