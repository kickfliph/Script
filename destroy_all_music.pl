#!/usr/bin/perl
use strict;
use warnings;
use POSIX qw(strftime);
use File::Find::Rule;
 
#variables
my $dir = "/home/cafe/Respaldo/Datos/VzIbM";
my @multim = ('.wav','.mp3','.ogg','.wma','.avi','wav','mp3','ogg','wma','avi');
my @resp = ('S','s');
my $tip_arch = "";
my @files = ();
my $tmp = "";

for (;;){
	print "...:::Binevenido al Sistema de Busqueda y destrucción CVACAfÉ:::..\n";
	print "Por favor introduzca la extensión del archivo que desea destruir: Ejm: .wav, .mp3, .ogg, .wma ó 'S' para salir : ";
	my $resp = <STDIN>;
	$tip_arch = $resp;
	if ($tip_arch =~ m/S|s/){
		print "...::Hasta luego::..\n";
		exit;
	} 	

	if($tip_arch =~ m/.wav|wav|.WAV|WAV/) {
		my @files = File::Find::Rule->file->name('*.wav')->in("$dir");
		print "@files ";
	  } elsif($tip_arch =~ m/.mp3|mp3|.MP3|MP3/) {
		my @files = File::Find::Rule->file->name('*.mp3')->in("$dir");
		print "@files ";
	  } elsif($tip_arch =~ m/.ogg|ogg|.OGG|OGG/) {
		my @files = File::Find::Rule->file->name('*.ogg')->in("$dir");
		print "@files ";
	  } elsif($tip_arch =~ m/.wma|wma|.WMA|WMA/) {
		my @files = File::Find::Rule->file->name('*.wma')->in("$dir");
		print "@files ";
	  } elsif($tip_arch =~ m/.flac|flac|.FLAC|FLAC/) {
		my @files = File::Find::Rule->file->name('*.flac')->in("$dir");
		print "@files ";
	 }
	$tmp = shift@files;
	if ($tmp eq " "){
		print "No exisite archivos con extesión $tip_arch para eliminar\n";
		exit;	
	}
	for (;;){
		print "¡¡¡Todos los datos con la extensión $tip_arch serán eliminados!!! ¿está Usted seguro? Si/No : ";
		my $tmp = <STDIN>;
		my $resp = $tmp;
		if ($resp =~ m/Si|si|sI/){
			print "Eliminiando....\n";
			exit;
		}
		#elsif ($resp =~ m/No|no|nO/){
		elsif print "...::Hasta luego::..\n";{
			exit;
		}
        next;
	}
   next;
}
print "...::Hasta luego::..\n";
exit;
