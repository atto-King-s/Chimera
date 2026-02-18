(* ::Package:: *)

(*
This file is for internal handling and is used to create
pdf printouts of the package notebook Chimera.nb.

It can be run directly from the terminal with the command
   MathKernel -script PDFexporter.m
or it can be run directly from Mathematica.
*)


directory=Quiet[Check[NotebookDirectory[],DirectoryName[$InputFileName]],{FrontEndObject::notavail}];


Export[
FileNameJoin[{directory,"Chimera.pdf"}],
Import[FileNameJoin[{directory,"Chimera.nb"}]]/.{Closed->Open},
"PDF"
];
