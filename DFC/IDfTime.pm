# ------------------------------------------------------------------- #
# IDfTime
# com.documentum.fc.common.IDfTime
# ------------------------------------------------------------------- #
package IDfTime;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::IDfTime';


sub asString {
	my ($self,$pattern) = @_;
	my $asString = JPL::AutoLoader::getmeth('asString',['java.lang.String'],['java.lang.String']);
	return $$self->$asString($pattern);
}

sub compareTo {
	my ($self,$time) = @_;
	my $compareTo = JPL::AutoLoader::getmeth('compareTo',['com.documentum.fc.common.IDfTime'],['int']);
	return $$self->$compareTo($$time);
}

sub equals {
	my ($self,$time) = @_;
	my $equals = JPL::AutoLoader::getmeth('equals',['com.documentum.fc.common.IDfTime'],['boolean']);
	return $$self->$equals($$time);
}

sub getDate {
	my $self = shift;
	my $getDate = JPL::AutoLoader::getmeth('getDate',[],['java.util.Date']);
	return $$self->$getDate();
}

sub getDay {
	my $self = shift;
	my $getDay = JPL::AutoLoader::getmeth('getDay',[],['int']);
	return $$self->$getDay();
}

sub getHour {
	my $self = shift;
	my $getHour = JPL::AutoLoader::getmeth('getHour',[],['int']);
	return $$self->$getHour();
}

sub getMinutes {
	my $self = shift;
	my $getMinutes = JPL::AutoLoader::getmeth('getMinutes',[],['int']);
	return $$self->$getMinutes();
}

sub getMonth {
	my $self = shift;
	my $getMonth = JPL::AutoLoader::getmeth('getMonth',[],['int']);
	return $$self->$getMonth();
}

sub getPattern {
	my $self = shift;
	my $getPattern = JPL::AutoLoader::getmeth('getPattern',[],['java.lang.String']);
	return $$self->$getPattern();
}

sub getSeconds {
	my $self = shift;
	my $getSeconds = JPL::AutoLoader::getmeth('getSeconds',[],['int']);
	return $$self->$getSeconds();
}

sub getYear {
	my $self = shift;
	my $getYear = JPL::AutoLoader::getmeth('getYear',[],['int']);
	return $$self->$getYear();
}

sub isNullDate {
	my $self = shift;
	my $isNullDate = JPL::AutoLoader::getmeth('isNullDate',[],['boolean']);
	return $$self->$isNullDate();
}

sub isValid {
	my $self = shift;
	my $isValid = JPL::AutoLoader::getmeth('isValid',[],['boolean']);
	return $$self->$isValid();
}

sub toString {
	my $self = shift;
	my $toString = JPL::AutoLoader::getmeth('toString',[],['java.lang.String']);
	return $$self->$toString();
}


1;
#__EOF__