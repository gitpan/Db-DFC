# ------------------------------------------------------------------- #
# IDfProperties
# com.documentum.fc.common.IDfProperties
# ------------------------------------------------------------------- #
package IDfProperties;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::IDfProperties';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfList';
use JPL::Class 'com::documentum::fc::common::IDfTime';
use JPL::Class 'com::documentum::fc::common::IDfValue';


use constant DF_BOOLEAN =>  0;
use constant DF_DOUBLE  =>  5;
use constant DF_ID      =>  3;
use constant DF_INTEGER =>  1;
use constant DF_LIST    =>  6;  # unknown
use constant DF_OBJECT  =>  7;  # unknown
use constant DF_STRING  =>  2;
use constant DF_TIME    =>  4;
use constant DF_VALUE   =>  8;  # unknown


sub clear {
	my $self = shift;
	my $clear = JPL::AutoLoader::getmeth('clear',[],[]);
	return $$self->$clear();
}

sub containsProperty {
	my ($self,$propertyName) = @_;
	my $containsProperty = JPL::AutoLoader::getmeth('containsProperty',['java.lang.String'],['boolean']);
	return $$self->$containsProperty($propertyName);
}

sub containsValue {
	my ($self,$propertyValue) = @_;
	my $containsValue = JPL::AutoLoader::getmeth('containsValue',['java.lang.Object'],['boolean']);
	return $$self->$containsValue($propertyValue);
}

sub get {
	my ($self,$propertyName) = @_;
	my $get = JPL::AutoLoader::getmeth('get',['java.lang.String'],['java.lang.Object']);
	return $$self->$get($propertyName);
}

sub getBoolean {
	my ($self,$propertyName) = @_;
	my $getBoolean = JPL::AutoLoader::getmeth('getBoolean',['java.lang.String'],['boolean']);
	return $$self->$getBoolean($propertyName);
}

sub getCount {
	my $self = shift;
	my $getCount = JPL::AutoLoader::getmeth('getCount',[],['int']);
	return $$self->$getCount();
}

sub getDouble {
	my ($self,$propertyName) = @_;
	my $getDouble = JPL::AutoLoader::getmeth('getDouble',['java.lang.String'],['double']);
	return $$self->$getDouble($propertyName);
}

sub getId {
	my ($self,$propertyName) = @_;
	my $getId = JPL::AutoLoader::getmeth('getId',['java.lang.String'],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getId($propertyName);
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getInt {
	my ($self,$propertyName) = @_;
	my $getInt = JPL::AutoLoader::getmeth('getInt',['java.lang.String'],['int']);
	return $$self->$getInt($propertyName);
}

sub getList {
	my ($self,$propertyName) = @_;
	my $getList = JPL::AutoLoader::getmeth('getList',['java.lang.String'],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getList($propertyName);
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getProperties {
	my $self = shift;
	my $getProperties = JPL::AutoLoader::getmeth('getProperties',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getProperties();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getPropertyType {
	my ($self,$propertyName) = @_;
	my $getPropertyType = JPL::AutoLoader::getmeth('getPropertyType',['java.lang.String'],['int']);
	return $$self->$getPropertyType($propertyName);
}

sub getString {
	my ($self,$propertyName) = @_;
	my $getString = JPL::AutoLoader::getmeth('getString',['java.lang.String'],['java.lang.String']);
	return $$self->$getString($propertyName);
}

sub getTime {
	my ($self,$propertyName) = @_;
	my $getTime = JPL::AutoLoader::getmeth('getTime',['java.lang.String'],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getTime($propertyName);
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getValue {
	my ($self,$propertyName) = @_;
	my $getValue = JPL::AutoLoader::getmeth('getValue',['java.lang.String'],['com.documentum.fc.common.IDfValue']);
	my $tmp = $$self->$getValue($propertyName);
	if ($tmp) {
		bless(\$tmp,IDfValue);
		return \$tmp;
	} else {
		return undef;
	}
}

sub isEmpty {
	my $self = shift;
	my $isEmpty = JPL::AutoLoader::getmeth('isEmpty',[],['boolean']);
	return $$self->$isEmpty();
}

sub put {
	my ($self,$propertyName,$propertyValue) = @_;
	my $put = JPL::AutoLoader::getmeth('put',['java.lang.String','java.lang.Object'],[]);
	return $$self->$put($propertyName,$propertyValue);
}

sub putBoolean {
	my ($self,$propertyName,$propertyValue) = @_;
	my $putBoolean = JPL::AutoLoader::getmeth('putBoolean',['java.lang.String','boolean'],[]);
	return $$self->$putBoolean($propertyName,$propertyValue);
}

sub putDouble {
	my ($self,$propertyName,$propertyValue) = @_;
	my $putDouble = JPL::AutoLoader::getmeth('putDouble',['java.lang.String','double'],[]);
	return $$self->$putDouble($propertyName,$propertyValue);
}

sub putId {
	my ($self,$propertyName,$propertyValue) = @_;
	my $putId = JPL::AutoLoader::getmeth('putId',['java.lang.String','com.documentum.fc.common.IDfId'],[]);
	return $$self->$putId($propertyName,$$propertyValue);
}

sub putInt {
	my ($self,$propertyName,$propertyValue) = @_;
	my $putInt = JPL::AutoLoader::getmeth('putInt',['java.lang.String','int'],[]);
	return $$self->$putInt($propertyName,$propertyValue);
}

sub putList {
	my ($self,$propertyName,$propertyValue) = @_;
	my $putList = JPL::AutoLoader::getmeth('putList',['java.lang.String','com.documentum.fc.common.IDfList'],[]);
	return $$self->$putList($propertyName,$$propertyValue);
}

sub putString {
	my ($self,$propertyName,$propertyValue) = @_;
	my $putString = JPL::AutoLoader::getmeth('putString',['java.lang.String','java.lang.String'],[]);
	return $$self->$putString($propertyName,$propertyValue);
}

sub putTime {
	my ($self,$propertyName,$propertyValue) = @_;
	my $putTime = JPL::AutoLoader::getmeth('putTime',['java.lang.String','com.documentum.fc.common.IDfTime'],[]);
	return $$self->$putTime($propertyName,$$propertyValue);
}

sub putValue {
	my ($self,$propertyName,$propertyValue) = @_;
	my $putValue = JPL::AutoLoader::getmeth('putValue',['java.lang.String','com.documentum.fc.common.IDfValue'],[]);
	return $$self->$putValue($propertyName,$$propertyValue);
}

sub remove {
	my ($self,$propertyName) = @_;
	my $remove = JPL::AutoLoader::getmeth('remove',['java.lang.String'],[]);
	return $$self->$remove($propertyName);
}


1;
#__EOF__