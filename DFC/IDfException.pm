# ------------------------------------------------------------------- #
# IDfException
# com.documentum.fc.common.IDfException
# ------------------------------------------------------------------- #
package IDfException;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::DfException';
use JPL::Class 'com::documentum::fc::common::IDfException';
use JPL::Class 'com::documentum::fc::common::IDfProperties';


use constant DM_NOTDFC_E_EXTERNAL			=> 0x000;
use constant DM_NOTDFC_E_JAVA				=> 0x001;
use constant DM_DFC_E_UNDEFINED				=> 0x0FF;
use constant DM_DFC_E_SERVER				=> 0x100;
use constant DM_DFC_E_NOT_SUPPORTED			=> 0x200;
use constant DM_DFC_E_BAD_VALUE				=> 0x201;
use constant DM_DFC_E_CLASS_NOT_FOUND		=> 0x202;
use constant DM_DFC_E_BAD_CLASS				=> 0x203;
use constant DM_DFC_E_INIT_DMCL				=> 0x205;
use constant DM_DFC_E_TYPE_MISMATCH			=> 0x220;
use constant DM_DFC_E_TYPE_MISMATCH_ADD		=> 0x221;
use constant DM_DFC_E_TYPE_MISMATCH_GET		=> 0x222;
use constant DM_DFC_E_TYPE_MISMATCH_COMP	=> 0x223;
use constant DM_DFCSESS_E_DISCONNECTED		=> 0x400;
use constant DM_DFCSESS_E_ILLEGAL_OP		=> 0x401;
use constant DM_DFCSESS_E_FAILED			=> 0x402;
use constant DM_DFCSESS_E_FAILED_EX			=> 0x403;
use constant DM_DFCSESS_E_BAD_ADOPT_SESSID	=> 0x405;
use constant DM_DFCCOLL_E_BAD_STATE			=> 0x500;
use constant DM_DFCCOLL_E_BAD_QUERY_TYPE	=> 0x501;
use constant DM_DFCWF_E_APPEND_NOTE			=> 0x520;
use constant DM_DFCWF_E_USER_LIMIT			=> 0x522;
use constant DM_DFCWF_E_NO_USER				=> 0x523;
use constant DM_DFCWF_E_NO_OBJECT			=> 0x524;
use constant DM_DFCWF_E_START_FAILED		=> 0x525;
use constant DM_DFCWF_E_INVALID_GROUP		=> 0x526;
use constant DM_DFCWF_E_MISSING_TEMPLATE	=> 0x527;
use constant DM_DFCWF_E_BAD_OBJECT			=> 0x528;
use constant DM_DFCWF_E_BAD_TEMPLATE		=> 0x529;
use constant DM_DFCBP_E_ALIAS_ALREADY_EXISTS	=> 0x540;
use constant DM_DFCBP_E_ALIAS_NOT_EXIST		=> 0x541;
use constant DM_DFCCTXTMGR_E_GETCONTEXT		=> 0x580;
use constant DM_VALIDATION_E_ERROR 			=> 0x0600;
use constant DM_VALIDATION_E_ATTR_RULES 	=> 0x0610;
use constant DM_VALIDATION_E_USE_VALUE_ASST	=> 0x0611;
use constant DM_VALIDATION_E_EXCESS_LEN		=> 0x0612;
use constant DM_VALIDATION_E_DATATYPE		=> 0x0613;
use constant DM_VALIDATION_E_FORMAT			=> 0x0614;
use constant DM_VALIDATION_E_EXPR			=> 0x0615;
use constant DM_VALIDATION_E_ATTR_RULES_NO_VAL => 0x0616;
use constant DM_VALIDATION_E_OBJ_RULES 		=> 0x0630;
use constant DM_VALIDATION_E_OBJ_NULL_DATA	=> 0x0631;
use constant DM_VALIDATION_E_OBJ_EXPR		=> 0x0632;

	    
sub getCount {
	my $self = shift;
	my $getCount = JPL::AutoLoader::getmeth('getCount',[],['int']);
	return $$self->$getCount();
}

sub getErrorCode {
	my $self = shift;
	my $getErrorCode = JPL::AutoLoader::getmeth('getErrorCode',[],['int']);
	return $$self->$getErrorCode();
}

sub getMessage {
	my $self = shift;
	my $getMessage = JPL::AutoLoader::getmeth('getMessage',[],['java.lang.String']);
	return $$self->$getMessage();
}

sub getNextException {
	my $self = shift;
	my $getNextException = JPL::AutoLoader::getmeth('getNextException',[],['com.documentum.fc.common.IDfException']);
	my $tmp = $$self->$getNextException();
	if ($tmp) {
		bless(\$tmp,IDfException);
		return \$tmp;
	} else {
		return undef;
	}
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

sub getStackTrace {
	my $self = shift;
	my $getStackTrace = JPL::AutoLoader::getmeth('getStackTrace',[],['java.lang.String']);
	return $$self->$getStackTrace();
}

sub getTailException {
	my $self = shift;
	my $getTailException = JPL::AutoLoader::getmeth('getTailException',[],['com.documentum.fc.common.IDfException']);
	my $tmp = $$self->$getTailException();
	if ($tmp) {
		bless(\$tmp,IDfException);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getThreadInfo {
	my $self = shift;
	my $getThreadInfo = JPL::AutoLoader::getmeth('getThreadInfo',[],['java.lang.String']);
	return $$self->$getThreadInfo();
}

sub setErrorCode {
	my ($self,$errorCode) = @_;
	my $setErrorCode = JPL::AutoLoader::getmeth('setErrorCode',['int'],[]);
	return $$self->$setErrorCode($errorCode);
}

sub setMessage {
	my ($self,$message) = @_;
	my $setMessage = JPL::AutoLoader::getmeth('setMessage',['java.lang.String'],[]);
	return $$self->$setMessage($message);
}


1;
# __EOF__