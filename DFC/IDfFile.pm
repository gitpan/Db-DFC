# ------------------------------------------------------------------- #
# IDfFile
# com.documentum.operations.IDfFile
# ------------------------------------------------------------------- #
package IDfFile;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfFile';


sub canRead {
	my $self = shift;
	my $canRead = JPL::AutoLoader::getmeth('canRead',[],['boolean']);
	return $$self->$canRead();
}

sub canWrite {
	my $self = shift;
	my $canWrite = JPL::AutoLoader::getmeth('canWrite',[],['boolean']);
	return $$self->$canWrite();
}

sub deleteFile {
	my $self = shift;
	my $deleteFile = JPL::AutoLoader::getmeth('deleteFile',[],[]);
	return $$self->$deleteFile();
}

sub equals {
	my ($self,$fileSpec) = @_;
	my $equals = JPL::AutoLoader::getmeth('equals',['java.lang.Object'],['boolean']);
	return $$self->$equals($fileSpec);
}

sub exists {
	my $self = shift;
	my $exists = JPL::AutoLoader::getmeth('exists',[],['boolean']);
	return $$self->$exists();
}

sub getDirectory {
	my $self = shift;
	my $getDirectory = JPL::AutoLoader::getmeth('getDirectory',[],['java.lang.String']);
	return $$self->$getDirectory();
}

sub getExtension {
	my $self = shift;
	my $getExtension = JPL::AutoLoader::getmeth('getExtension',[],['java.lang.String']);
	return $$self->$getExtension();
}

sub getFullPath {
	my $self = shift;
	my $getFullPath = JPL::AutoLoader::getmeth('getFullPath',[],['java.lang.String']);
	return $$self->$getFullPath();
}

sub getName {
	my $self = shift;
	my $getName = JPL::AutoLoader::getmeth('getName',[],['java.lang.String']);
	return $$self->$getName();
}

sub getSeparator {
	my $self = shift;
	my $getSeparator = JPL::AutoLoader::getmeth('getSeparator',[],['java.lang.String']);
	return $$self->$getSeparator();
}

sub renameTo {
	my ($self,$newPath) = @_;
	my $renameTo = JPL::AutoLoader::getmeth('renameTo',['java.lang.String'],[]);
	return $$self->$renameTo($newPath);
}

sub setDirectory {
	my ($self,$dirPath) = @_;
	my $setDirectory = JPL::AutoLoader::getmeth('setDirectory',['java.lang.String'],[]);
	return $$self->$setDirectory($dirPath);
}

sub setExtension {
	my ($self,$newExtension) = @_;
	my $setExtension = JPL::AutoLoader::getmeth('setExtension',['java.lang.String'],[]);
	return $$self->$setExtension($newExtension);
}

sub setFullPath {
	my ($self,$filePath) = @_;
	my $setFullPath = JPL::AutoLoader::getmeth('setFullPath',['java.lang.String'],[]);
	return $$self->$setFullPath($filePath);
}

sub setName {
	my ($self,$fileName) = @_;
	my $setName = JPL::AutoLoader::getmeth('setName',['java.lang.String'],[]);
	return $$self->$setName($fileName);
}


1;
#__EOF__