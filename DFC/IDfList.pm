# ------------------------------------------------------------------- #
# IDfList
# com.documentum.fc.common.IDfList
# ------------------------------------------------------------------- #
package IDfList;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::IDfList';
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


sub append {
	my ($self,$value) = @_;
	my $append = JPL::AutoLoader::getmeth('append',['java.lang.Object'],['int']);
	return $$self->$append($value);
}

sub appendBoolean {
	my ($self,$value) = @_;
	my $appendBoolean = JPL::AutoLoader::getmeth('appendBoolean',['boolean'],['int']);
	return $$self->$appendBoolean($value);
}

sub appendDouble {
	my ($self,$value) = @_;
	my $appendDouble = JPL::AutoLoader::getmeth('appendDouble',['double'],['int']);
	return $$self->$appendDouble($value);
}

sub appendId {
	my ($self,$value) = @_;
	my $appendId = JPL::AutoLoader::getmeth('appendId',['com.documentum.fc.common.IDfId'],['int']);
	return $$self->$appendId($$value);
}

sub appendInt {
	my ($self,$value) = @_;
	my $appendInt = JPL::AutoLoader::getmeth('appendInt',['int'],['int']);
	return $$self->$appendInt($value);
}

sub appendList {
	my ($self,$value) = @_;
	my $appendList = JPL::AutoLoader::getmeth('appendList',['com.documentum.fc.common.IDfList'],['int']);
	return $$self->$appendList($$value);
}

sub appendString {
	my ($self,$value) = @_;
	my $appendString = JPL::AutoLoader::getmeth('appendString',['java.lang.String'],['int']);
	return $$self->$appendString($value);
}

sub appendTime {
	my ($self,$value) = @_;
	my $appendTime = JPL::AutoLoader::getmeth('appendTime',['com.documentum.fc.common.IDfTime'],['int']);
	return $$self->$appendTime($$value);
}

sub appendValue {
	my ($self,$value) = @_;
	my $appendValue = JPL::AutoLoader::getmeth('appendValue',['com.documentum.fc.common.IDfValue'],['int']);
	return $$self->$appendValue($$value);
}

sub findBooleanIndex {
	my ($self,$value) = @_;
	my $findBooleanIndex = JPL::AutoLoader::getmeth('findBooleanIndex',['boolean'],['int']);
	return $$self->$findBooleanIndex($value);
}

sub findDoubleIndex {
	my ($self,$value) = @_;
	my $findDoubleIndex = JPL::AutoLoader::getmeth('findDoubleIndex',['double'],['int']);
	return $$self->$findDoubleIndex($value);
}

sub findIdIndex {
	my ($self,$value) = @_;
	my $findIdIndex = JPL::AutoLoader::getmeth('findIdIndex',['com.documentum.fc.common.IDfId'],['int']);
	return $$self->$findIdIndex($$value);
}

sub findIndex {
	my ($self,$value) = @_;
	my $findIndex = JPL::AutoLoader::getmeth('findIndex',['java.lang.Object'],['int']);
	return $$self->$findIndex($value);
}

sub findIntIndex {
	my ($self,$value) = @_;
	my $findIntIndex = JPL::AutoLoader::getmeth('findIntIndex',['int'],['int']);
	return $$self->$findIntIndex($value);
}

sub findListIndex {
	my ($self,$value) = @_;
	my $findListIndex = JPL::AutoLoader::getmeth('findListIndex',['com.documentum.fc.common.IDfList'],['int']);
	return $$self->$findListIndex($$value);
}

sub findStringIndex {
	my ($self,$value) = @_;
	my $findStringIndex = JPL::AutoLoader::getmeth('findStringIndex',['java.lang.String'],['int']);
	return $$self->$findStringIndex($value);
}

sub findTimeIndex {
	my ($self,$value) = @_;
	my $findTimeIndex = JPL::AutoLoader::getmeth('findTimeIndex',['com.documentum.fc.common.IDfTime'],['int']);
	return $$self->$findTimeIndex($$value);
}

sub findValueIndex {
	my ($self,$value) = @_;
	my $findValueIndex = JPL::AutoLoader::getmeth('findValueIndex',['com.documentum.fc.common.IDfValue'],['int']);
	return $$self->$findValueIndex($$value);
}

sub get {
	my ($self,$index) = @_;
	my $get = JPL::AutoLoader::getmeth('get',['int'],['java.lang.Object']);
	return $$self->$get($index);
}

sub getBoolean {
	my ($self,$index) = @_;
	my $getBoolean = JPL::AutoLoader::getmeth('getBoolean',['int'],['boolean']);
	return $$self->$getBoolean($index);
}

sub getCount {
	my $self = shift;
	my $getCount = JPL::AutoLoader::getmeth('getCount',[],['int']);
	return $$self->$getCount();
}

sub getDouble {
	my ($self,$index) = @_;
	my $getDouble = JPL::AutoLoader::getmeth('getDouble',['int'],['double']);
	return $$self->$getDouble($index);
}

sub getElementType {
	my $self = shift;
	my $getElementType = JPL::AutoLoader::getmeth('getElementType',[],['int']);
	return $$self->$getElementType();
}

sub getElementTypeAt {
	my ($self,$index) = @_;
	my $getElementTypeAt = JPL::AutoLoader::getmeth('getElementTypeAt',['int'],['int']);
	return $$self->$getElementTypeAt($index);
}

sub getId {
	my ($self,$index) = @_;
	my $getId = JPL::AutoLoader::getmeth('getId',['int'],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getId($index);
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getInt {
	my ($self,$index) = @_;
	my $getInt = JPL::AutoLoader::getmeth('getInt',['int'],['int']);
	return $$self->$getInt($index);
}

sub getList {
	my ($self,$index) = @_;
	my $getList = JPL::AutoLoader::getmeth('getList',['int'],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getList($index);
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getString {
	my ($self,$index) = @_;
	my $getString = JPL::AutoLoader::getmeth('getString',['int'],['java.lang.String']);
	return $$self->$getString($index);
}

sub getTime {
	my ($self,$index) = @_;
	my $getTime = JPL::AutoLoader::getmeth('getTime',['int'],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getTime($index);
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getValue {
	my ($self,$index) = @_;
	my $getValue = JPL::AutoLoader::getmeth('getValue',['int'],['com.documentum.fc.common.IDfValue']);
	my $tmp = $$self->$getValue($index);
	if ($tmp) {
		bless(\$tmp,IDfValue);
		return \$tmp;
	} else {
		return undef;
	}
}

sub insert {
	my ($self,$index,$value) = @_;
	my $insert = JPL::AutoLoader::getmeth('insert',['int','java.lang.Object'],[]);
	return $$self->$insert($index,$value);
}

sub insertAll {
	my ($self,$index,$list) = @_;
	my $insertAll = JPL::AutoLoader::getmeth('insertAll',['int','com.documentum.fc.common.IDfList'],[]);
	return $$self->$insertAll($index,$$list);
}

sub insertBoolean {
	my ($self,$index,$value) = @_;
	my $insertBoolean = JPL::AutoLoader::getmeth('insertBoolean',['int','boolean'],[]);
	return $$self->$insertBoolean($index,$value);
}

sub insertDouble {
	my ($self,$index,$value) = @_;
	my $insertDouble = JPL::AutoLoader::getmeth('insertDouble',['int','double'],[]);
	return $$self->$insertDouble($index,$value);
}

sub insertId {
	my ($self,$index,$value) = @_;
	my $insertId = JPL::AutoLoader::getmeth('insertId',['int','com.documentum.fc.common.IDfId'],[]);
	return $$self->$insertId($index,$$value);
}

sub insertInt {
	my ($self,$index,$value) = @_;
	my $insertInt = JPL::AutoLoader::getmeth('insertInt',['int','int'],[]);
	return $$self->$insertInt($index,$value);
}

sub insertList {
	my ($self,$index,$value) = @_;
	my $insertList = JPL::AutoLoader::getmeth('insertList',['int','com.documentum.fc.common.IDfList'],[]);
	return $$self->$insertList($index,$$value);
}

sub insertString {
	my ($self,$index,$value) = @_;
	my $insertString = JPL::AutoLoader::getmeth('insertString',['int','java.lang.String'],[]);
	return $$self->$insertString($index,$value);
}

sub insertTime {
	my ($self,$index,$value) = @_;
	my $insertTime = JPL::AutoLoader::getmeth('insertTime',['int','com.documentum.fc.common.IDfTime'],[]);
	return $$self->$insertTime($index,$$value);
}

sub insertValue {
	my ($self,$index,$value) = @_;
	my $insertValue = JPL::AutoLoader::getmeth('insertValue',['int','com.documentum.fc.common.IDfValue'],[]);
	return $$self->$insertValue($index,$$value);
}

sub remove {
	my ($self,$index) = @_;
	my $remove = JPL::AutoLoader::getmeth('remove',['int'],[]);
	return $$self->$remove($index);
}

sub removeAll {
	my $self = shift;
	my $removeAll = JPL::AutoLoader::getmeth('removeAll',[],[]);
	return $$self->$removeAll();
}

sub set {
	my ($self,$index,$value) = @_;
	my $set = JPL::AutoLoader::getmeth('set',['int','java.lang.Object'],[]);
	return $$self->$set($index,$value);
}

sub setBoolean {
	my ($self,$index,$value) = @_;
	my $setBoolean = JPL::AutoLoader::getmeth('setBoolean',['int','boolean'],[]);
	return $$self->$setBoolean($index,$value);
}

sub setDouble {
	my ($self,$index,$value) = @_;
	my $setDouble = JPL::AutoLoader::getmeth('setDouble',['int','double'],[]);
	return $$self->$setDouble($index,$value);
}

sub setElementType {
	my ($self,$type) = @_;
	my $setElementType = JPL::AutoLoader::getmeth('setElementType',['int'],[]);
	return $$self->$setElementType($type);
}

sub setId {
	my ($self,$index,$value) = @_;
	my $setId = JPL::AutoLoader::getmeth('setId',['int','com.documentum.fc.common.IDfId'],[]);
	return $$self->$setId($index,$$value);
}

sub setInt {
	my ($self,$index,$value) = @_;
	my $setInt = JPL::AutoLoader::getmeth('setInt',['int','int'],[]);
	return $$self->$setInt($index,$value);
}

sub setList {
	my ($self,$index,$value) = @_;
	my $setList = JPL::AutoLoader::getmeth('setList',['int','com.documentum.fc.common.IDfList'],[]);
	return $$self->$setList($index,$$value);
}

sub setString {
	my ($self,$index,$value) = @_;
	my $setString = JPL::AutoLoader::getmeth('setString',['int','java.lang.String'],[]);
	return $$self->$setString($index,$value);
}

sub setTime {
	my ($self,$index,$value) = @_;
	my $setTime = JPL::AutoLoader::getmeth('setTime',['int','com.documentum.fc.common.IDfTime'],[]);
	return $$self->$setTime($index,$$value);
}

sub setValue {
	my ($self,$index,$value) = @_;
	my $setValue = JPL::AutoLoader::getmeth('setValue',['int','com.documentum.fc.common.IDfValue'],[]);
	return $$self->$setValue($index,$$value);
}


1;
#__EOF__