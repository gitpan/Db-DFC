# ------------------------------------------------------------------- #
# IDfRegistry
# com.documentum.registry.IDfRegistry
# ------------------------------------------------------------------- #
package IDfRegistry;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::registry::IDfRegistry';
use JPL::Class 'com::documentum::fc::common::IDfList';


sub closeKey {
	my $self = shift;
	my $closeKey = JPL::AutoLoader::getmeth('closeKey',[],[]);
	return $$self->$closeKey();
}

sub deleteSubKey {
	my ($self,$subKey) = @_;
	my $deleteSubKey = JPL::AutoLoader::getmeth('deleteSubKey',['java.lang.String'],[]);
	return $$self->$deleteSubKey($subKey);
}

sub deleteSubKeys {
	my $self = shift;
	my $deleteSubKeys = JPL::AutoLoader::getmeth('deleteSubKeys',[],[]);
	return $$self->$deleteSubKeys();
}

sub deleteValue {
	my ($self,$name) = @_;
	my $deleteValue = JPL::AutoLoader::getmeth('deleteValue',['java.lang.String'],[]);
	return $$self->$deleteValue($name);
}

sub getBinaryValue {
	my ($self,$name) = @_;
	my $getBinaryValue = JPL::AutoLoader::getmeth('getBinaryValue',['java.lang.String'],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getBinaryValue($name);
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getBinaryValueAt {
	my ($self,$name,$index) = @_;
	my $getBinaryValueAt = JPL::AutoLoader::getmeth('getBinaryValueAt',['java.lang.String','int'],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getBinaryValueAt($name,$index);
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getBinaryValues {
	my ($self,$name) = @_;
	my $getBinaryValues = JPL::AutoLoader::getmeth('getBinaryValues',['java.lang.String'],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getBinaryValues($name);
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getIntValue {
	my ($self,$name) = @_;
	my $getIntValue = JPL::AutoLoader::getmeth('getIntValue',['java.lang.String'],['int']);
	return $$self->$getIntValue($name);
}

sub getIntValueAt {
	my ($self,$name,$index) = @_;
	my $getIntValueAt = JPL::AutoLoader::getmeth('getIntValueAt',['java.lang.String','int'],['int']);
	return $$self->$getIntValueAt($name,$index);
}

sub getIntValues {
	my ($self,$name) = @_;
	my $getIntValues = JPL::AutoLoader::getmeth('getIntValues',['java.lang.String'],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getIntValues($name);
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getStringValue {
	my ($self,$name) = @_;
	my $getStringValue = JPL::AutoLoader::getmeth('getStringValue',['java.lang.String'],['java.lang.String']);
	return $$self->$getStringValue($name);
}

sub getStringValueAt {
	my ($self,$name,$index) = @_;
	my $getStringValueAt = JPL::AutoLoader::getmeth('getStringValueAt',['java.lang.String','int'],['java.lang.String']);
	return $$self->$getStringValueAt($name,$index);
}

sub getStringValues {
	my ($self,$name) = @_;
	my $getStringValues = JPL::AutoLoader::getmeth('getStringValues',['java.lang.String'],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getStringValues($name);
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getValuesSize {
	my ($self,$name) = @_;
	my $getValuesSize = JPL::AutoLoader::getmeth('getValuesSize',['java.lang.String'],['int']);
	return $$self->$getValuesSize($name);
}

sub isSubKey {
	my ($self,$subKey) = @_;
	my $isSubKey = JPL::AutoLoader::getmeth('isSubKey',['java.lang.String'],['boolean']);
	return $$self->$isSubKey($subKey);
}

sub openKey {
	my ($self,$subKey) = @_;
	my $openKey = JPL::AutoLoader::getmeth('openKey',['java.lang.String'],[]);
	return $$self->$openKey($subKey);
}

sub setBinaryValue {
	my ($self,$name,$data) = @_;
	my $setBinaryValue = JPL::AutoLoader::getmeth('setBinaryValue',['java.lang.String','com.documentum.fc.common.IDfList'],[]);
	return $$self->$setBinaryValue($name,$$data);
}

sub setBinaryValueAt {
	my ($self,$name,$index,$data) = @_;
	my $setBinaryValueAt = JPL::AutoLoader::getmeth('setBinaryValueAt',['java.lang.String','int','com.documentum.fc.common.IDfList'],[]);
	return $$self->$setBinaryValueAt($name,$index,$$data);
}

sub setBinaryValues {
	my ($self,$name,$data) = @_;
	my $setBinaryValues = JPL::AutoLoader::getmeth('setBinaryValues',['java.lang.String','com.documentum.fc.common.IDfList'],[]);
	return $$self->$setBinaryValues($name,$$data);
}

sub setIntValue {
	my ($self,$name,$data) = @_;
	my $setIntValue = JPL::AutoLoader::getmeth('setIntValue',['java.lang.String','int'],[]);
	return $$self->$setIntValue($name,$data);
}

sub setIntValueAt {
	my ($self,$name,$index,$data) = @_;
	my $setIntValueAt = JPL::AutoLoader::getmeth('setIntValueAt',['java.lang.String','int','int'],[]);
	return $$self->$setIntValueAt($name,$index,$data);
}

sub setIntValues {
	my ($self,$name,$data) = @_;
	my $setIntValues = JPL::AutoLoader::getmeth('setIntValues',['java.lang.String','com.documentum.fc.common.IDfList'],[]);
	return $$self->$setIntValues($name,$$data);
}

sub setStringValue {
	my ($self,$name,$data) = @_;
	my $setStringValue = JPL::AutoLoader::getmeth('setStringValue',['java.lang.String','java.lang.String'],[]);
	return $$self->$setStringValue($name,$data);
}

sub setStringValueAt {
	my ($self,$name,$index,$data) = @_;
	my $setStringValueAt = JPL::AutoLoader::getmeth('setStringValueAt',['java.lang.String','int','java.lang.String'],[]);
	return $$self->$setStringValueAt($name,$index,$data);
}

sub setStringValues {
	my ($self,$name,$data) = @_;
	my $setStringValues = JPL::AutoLoader::getmeth('setStringValues',['java.lang.String','com.documentum.fc.common.IDfList'],[]);
	return $$self->$setStringValues($name,$$data);
}

sub setValuesSize {
	my ($self,$name,$size) = @_;
	my $setValuesSize = JPL::AutoLoader::getmeth('setValuesSize',['java.lang.String','int'],[]);
	return $$self->$setValuesSize($name,$size);
}

sub subKeys {
	my $self = shift;
	my $subKeys = JPL::AutoLoader::getmeth('subKeys',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$subKeys();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub values {
	my $self = shift;
	my $values = JPL::AutoLoader::getmeth('values',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$values();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}


1;
#__EOF__