# ------------------------------------------------------------------- #
# IDfPackage
# com.documentum.fc.client.IDfPackage
# ------------------------------------------------------------------- #
package IDfPackage;
@ISA = (IDfPersistentObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfPackage';
use JPL::Class 'com::documentum::fc::common::IDfTime';
use JPL::Class 'com::documentum::fc::common::IDfId';


sub appendNote {
	my ($self,$text,$persistent) = @_;
	my $appendNote = JPL::AutoLoader::getmeth('appendNote',['java.lang.String','boolean'],['int']);
	return $$self->$appendNote($text,$persistent);
}

sub getAcceptanceDate {
	my $self = shift;
	my $getAcceptanceDate = JPL::AutoLoader::getmeth('getAcceptanceDate',[],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getAcceptanceDate();
	if ($tmp) {
		bless(\$tmp,IDfTime);
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

sub getComponentId {
	my ($self,$index) = @_;
	my $getComponentId = JPL::AutoLoader::getmeth('getComponentId',['int'],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getComponentId($index);
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getComponentIdCount {
	my $self = shift;
	my $getComponentIdCount = JPL::AutoLoader::getmeth('getComponentIdCount',[],['int']);
	return $$self->$getComponentIdCount();
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

sub getNoteCount {
	my $self = shift;
	my $getNoteCount = JPL::AutoLoader::getmeth('getNoteCount',[],['int']);
	return $$self->$getNoteCount();
}

sub getNoteCreationDate {
	my ($self,$noteIndex) = @_;
	my $getNoteCreationDate = JPL::AutoLoader::getmeth('getNoteCreationDate',['int'],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getNoteCreationDate($noteIndex);
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getNoteFlag {
	my ($self,$noteIndex) = @_;
	my $getNoteFlag = JPL::AutoLoader::getmeth('getNoteFlag',['int'],['int']);
	return $$self->$getNoteFlag($noteIndex);
}

sub getNoteId {
	my ($self,$noteIndex) = @_;
	my $getNoteId = JPL::AutoLoader::getmeth('getNoteId',['int'],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getNoteId($noteIndex);
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getNotePersistance {
	my ($self,$noteIndex) = @_;
	my $getNotePersistance = JPL::AutoLoader::getmeth('getNotePersistance',['int'],['boolean']);
	return $$self->$getNotePersistance($noteIndex);
}

sub getNoteText {
	my ($self,$noteIndex) = @_;
	my $getNoteText = JPL::AutoLoader::getmeth('getNoteText',['int'],['java.lang.String']);
	return $$self->$getNoteText($noteIndex);
}

sub getNoteWriter {
	my ($self,$noteIndex) = @_;
	my $getNoteWriter = JPL::AutoLoader::getmeth('getNoteWriter',['int'],['java.lang.String']);
	return $$self->$getNoteWriter($noteIndex);
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
	my $self = shift;
	my $getPackageName = JPL::AutoLoader::getmeth('getPackageName',[],['java.lang.String']);
	return $$self->$getPackageName();
}

sub getPackageOperation {
	my $self = shift;
	my $getPackageOperation = JPL::AutoLoader::getmeth('getPackageOperation',[],['java.lang.String']);
	return $$self->$getPackageOperation();
}

sub getPackageOrder {
	my $self = shift;
	my $getPackageOrder = JPL::AutoLoader::getmeth('getPackageOrder',[],['int']);
	return $$self->$getPackageOrder();
}

sub getPackageType {
	my $self = shift;
	my $getPackageType = JPL::AutoLoader::getmeth('getPackageType',[],['java.lang.String']);
	return $$self->$getPackageType();
}

sub getPortName {
	my $self = shift;
	my $getPortName = JPL::AutoLoader::getmeth('getPortName',[],['java.lang.String']);
	return $$self->$getPortName();
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

sub isManufactured {
	my $self = shift;
	my $isManufactured = JPL::AutoLoader::getmeth('isManufactured',[],['boolean']);
	return $$self->$isManufactured();
}

sub removeNote {
	my ($self,$noteIndex) = @_;
	my $removeNote = JPL::AutoLoader::getmeth('removeNote',['int'],[]);
	return $$self->$removeNote($noteIndex);
}


1;
#__EOF__