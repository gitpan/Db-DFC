# ------------------------------------------------------------------- #
# IDfOperationMonitor
# com.documentum.operations.IDfOperationMonitor
# ------------------------------------------------------------------- #
package IDfOperationMonitor;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfOperationMonitor';
use JPL::Class 'com::documentum::operations::IDfOperationError';
use JPL::Class 'com::documentum::operations::IDfOperation';
use JPL::Class 'com::documentum::operations::IDfOperationNode';
use JPL::Class 'com::documentum::operations::IDfOperationStep';


sub getYesNoAnswer {
	my ($self,$question) = @_;
	my $getYesNoAnswer = JPL::AutoLoader::getmeth('getYesNoAnswer',['com.documentum.operations.IDfOperationError'],['boolean']);
	return $$self->$getYesNoAnswer($$question);
}

sub progressReport {
	my ($self,$operation,$operationPercentDone,$step,$stepPercentDone,$node) = @_;
	my $progressReport = JPL::AutoLoader::getmeth('progressReport',['com.documentum.operations.IDfOperation','int','com.documentum.operations.IDfOperationStep','int','com.documentum.operations.IDfOperationNode'],['int']);
	return $$self->$progressReport($$operation,$operationPercentDone,$$step,$stepPercentDone,$$node);
}

sub reportError {
	my ($self,$error) = @_;
	my $reportError = JPL::AutoLoader::getmeth('reportError',['com.documentum.operations.IDfOperationError'],['int']);
	return $$self->$reportError($$error);
}


1;
#__EOF__