# ------------------------------------------------------------------- #
# IDfClientRegistry
# com.documentum.registry.IDfClientRegistry
# ------------------------------------------------------------------- #
package IDfClientRegistry;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::registry::IDfClientRegistry';
use JPL::Class 'com::documentum::fc::client::IDfSysObject';
use JPL::Class 'com::documentum::registry::IDfCheckedOutObject';
use JPL::Class 'com::documentum::registry::IDfLocalObject';
use JPL::Class 'com::documentum::registry::IDfViewedObject';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfList';
use JPL::Class 'com::documentum::registry::IDfRegistry';
use JPL::Class 'com::documentum::fc::client::IDfSession';


sub addCheckedOutObject {
	my ($self,$sysObject,$filePath,$keepLocalFile,$folderPath) = @_;
	my $addCheckedOutObject = JPL::AutoLoader::getmeth('addCheckedOutObject',['com.documentum.fc.client.IDfSysObject','java.lang.String','boolean','java.lang.String'],['com.documentum.registry.IDfCheckedOutObject']);
	my $tmp = $$self->$addCheckedOutObject($$sysObject,$filePath,$keepLocalFile,$folderPath);
	if ($tmp) {
		bless(\$tmp,IDfCheckedOutObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub addFileToBeDeleted {
	my ($self,$filePath) = @_;
	my $addFileToBeDeleted = JPL::AutoLoader::getmeth('addFileToBeDeleted',['java.lang.String'],[]);
	return $$self->$addFileToBeDeleted($filePath);
}

sub addLocalObject {
	my ($self,$sysObject,$filePath,$keepLocalFile,$folderPath) = @_;
	my $addLocalObject = JPL::AutoLoader::getmeth('addLocalObject',['com.documentum.fc.client.IDfSysObject','java.lang.String','boolean','java.lang.String'],['com.documentum.registry.IDfLocalObject']);
	my $tmp = $$self->$addLocalObject($$sysObject,$filePath,$keepLocalFile,$folderPath);
	if ($tmp) {
		bless(\$tmp,IDfLocalObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub addViewedObject {
	my ($self,$sysObject,$filePath,$folderPath) = @_;
	my $addViewedObject = JPL::AutoLoader::getmeth('addViewedObject',['com.documentum.fc.client.IDfSysObject','java.lang.String','java.lang.String'],['com.documentum.registry.IDfViewedObject']);
	my $tmp = $$self->$addViewedObject($$sysObject,$filePath,$folderPath);
	if ($tmp) {
		bless(\$tmp,IDfViewedObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub applyModifiedAttrs {
	my ($self,$sysObject) = @_;
	my $applyModifiedAttrs = JPL::AutoLoader::getmeth('applyModifiedAttrs',['com.documentum.fc.client.IDfSysObject'],[]);
	return $$self->$applyModifiedAttrs($$sysObject);
}

sub getCheckedOutObjectById {
	my ($self,$objectId) = @_;
	my $getCheckedOutObjectById = JPL::AutoLoader::getmeth('getCheckedOutObjectById',['com.documentum.fc.common.IDfId'],['com.documentum.registry.IDfCheckedOutObject']);
	my $tmp = $$self->$getCheckedOutObjectById($$objectId);
	if ($tmp) {
		bless(\$tmp,IDfCheckedOutObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getCheckedOutObjectByPath {
	my ($self,$filePath) = @_;
	my $getCheckedOutObjectByPath = JPL::AutoLoader::getmeth('getCheckedOutObjectByPath',['java.lang.String'],['com.documentum.registry.IDfCheckedOutObject']);
	my $tmp = $$self->$getCheckedOutObjectByPath($filePath);
	if ($tmp) {
		bless(\$tmp,IDfCheckedOutObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getCheckedOutObjects {
	my $self = shift;
	my $getCheckedOutObjects = JPL::AutoLoader::getmeth('getCheckedOutObjects',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getCheckedOutObjects();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getCheckoutDirectory {
	my $self = shift;
	my $getCheckoutDirectory = JPL::AutoLoader::getmeth('getCheckoutDirectory',[],['java.lang.String']);
	return $$self->$getCheckoutDirectory();
}

sub getExportDirectory {
	my $self = shift;
	my $getExportDirectory = JPL::AutoLoader::getmeth('getExportDirectory',[],['java.lang.String']);
	return $$self->$getExportDirectory();
}

sub getFilesToBeDeleted {
	my $self = shift;
	my $getFilesToBeDeleted = JPL::AutoLoader::getmeth('getFilesToBeDeleted',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getFilesToBeDeleted();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getLocalObjectById {
	my ($self,$objectId) = @_;
	my $getLocalObjectById = JPL::AutoLoader::getmeth('getLocalObjectById',['com.documentum.fc.common.IDfId'],['com.documentum.registry.IDfLocalObject']);
	my $tmp = $$self->$getLocalObjectById($$objectId);
	if ($tmp) {
		bless(\$tmp,IDfLocalObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getLocalObjectByPath {
	my ($self,$filePath) = @_;
	my $getLocalObjectByPath = JPL::AutoLoader::getmeth('getLocalObjectByPath',['java.lang.String'],['com.documentum.registry.IDfLocalObject']);
	my $tmp = $$self->$getLocalObjectByPath($filePath);
	if ($tmp) {
		bless(\$tmp,IDfLocalObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getLocalObjects {
	my $self = shift;
	my $getLocalObjects = JPL::AutoLoader::getmeth('getLocalObjects',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getLocalObjects();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getProgramDirectory {
	my $self = shift;
	my $getProgramDirectory = JPL::AutoLoader::getmeth('getProgramDirectory',[],['java.lang.String']);
	return $$self->$getProgramDirectory();
}

sub getRegistry {
	my $self = shift;
	my $getRegistry = JPL::AutoLoader::getmeth('getRegistry',[],['com.documentum.registry.IDfRegistry']);
	my $tmp = $$self->$getRegistry();
	if ($tmp) {
		bless(\$tmp,IDfRegistry);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getUserDirectory {
	my $self = shift;
	my $getUserDirectory = JPL::AutoLoader::getmeth('getUserDirectory',[],['java.lang.String']);
	return $$self->$getUserDirectory();
}

sub getViewedObjectById {
	my ($self,$objectId) = @_;
	my $getViewedObjectById = JPL::AutoLoader::getmeth('getViewedObjectById',['com.documentum.fc.common.IDfId'],['com.documentum.registry.IDfViewedObject']);
	my $tmp = $$self->$getViewedObjectById($$objectId);
	if ($tmp) {
		bless(\$tmp,IDfViewedObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getViewedObjectByPath {
	my ($self,$filePath) = @_;
	my $getViewedObjectByPath = JPL::AutoLoader::getmeth('getViewedObjectByPath',['java.lang.String'],['com.documentum.registry.IDfViewedObject']);
	my $tmp = $$self->$getViewedObjectByPath($filePath);
	if ($tmp) {
		bless(\$tmp,IDfViewedObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getViewedObjects {
	my $self = shift;
	my $getViewedObjects = JPL::AutoLoader::getmeth('getViewedObjects',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getViewedObjects();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub moveToCheckedOutFiles {
	my ($self,$object) = @_;
	my $moveToCheckedOutFiles = JPL::AutoLoader::getmeth('moveToCheckedOutFiles',['com.documentum.registry.IDfLocalObject'],[]);
	return $$self->$moveToCheckedOutFiles($$object);
}

sub moveToLocalFiles {
	my ($self,$object,$session) = @_;
	my $moveToLocalFiles = JPL::AutoLoader::getmeth('moveToLocalFiles',['com.documentum.registry.IDfCheckedOutObject','com.documentum.fc.client.IDfSession'],[]);
	return $$self->$moveToLocalFiles($$object,$$session);
}

sub removeCheckedOutObject {
	my ($self,$itemToRemove) = @_;
	my $removeCheckedOutObject = JPL::AutoLoader::getmeth('removeCheckedOutObject',['com.documentum.registry.IDfCheckedOutObject'],[]);
	return $$self->$removeCheckedOutObject($$itemToRemove);
}

sub removeFileToBeDeleted {
	my ($self,$filePath) = @_;
	my $removeFileToBeDeleted = JPL::AutoLoader::getmeth('removeFileToBeDeleted',['java.lang.String'],[]);
	return $$self->$removeFileToBeDeleted($filePath);
}

sub removeLocalObject {
	my ($self,$itemToRemove) = @_;
	my $removeLocalObject = JPL::AutoLoader::getmeth('removeLocalObject',['com.documentum.registry.IDfLocalObject'],[]);
	return $$self->$removeLocalObject($$itemToRemove);
}

sub removeViewedObject {
	my ($self,$itemToRemove) = @_;
	my $removeViewedObject = JPL::AutoLoader::getmeth('removeViewedObject',['com.documentum.registry.IDfViewedObject'],[]);
	return $$self->$removeViewedObject($$itemToRemove);
}

sub setCheckoutDirectory {
	my ($self,$checkoutDir) = @_;
	my $setCheckoutDirectory = JPL::AutoLoader::getmeth('setCheckoutDirectory',['java.lang.String'],[]);
	return $$self->$setCheckoutDirectory($checkoutDir);
}

sub setExportDirectory {
	my ($self,$exportDir) = @_;
	my $setExportDirectory = JPL::AutoLoader::getmeth('setExportDirectory',['java.lang.String'],[]);
	return $$self->$setExportDirectory($exportDir);
}

sub setProgramDirectory {
	my ($self,$progDir) = @_;
	my $setProgramDirectory = JPL::AutoLoader::getmeth('setProgramDirectory',['java.lang.String'],[]);
	return $$self->$setProgramDirectory($progDir);
}

sub setUserDirectory {
	my ($self,$userDir) = @_;
	my $setUserDirectory = JPL::AutoLoader::getmeth('setUserDirectory',['java.lang.String'],[]);
	return $$self->$setUserDirectory($userDir);
}


1;
#__EOF__