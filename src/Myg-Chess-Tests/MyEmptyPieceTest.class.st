Class {
	#name : 'MyEmptyPieceTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyEmptyPieceTest >> testEmptyPiecePolymorphism [
    | emptyPiece rook |
    emptyPiece := MyEmptyPiece new.
    rook := MyRook white.
    
    self assert: emptyPiece isEmpty.
    self deny: emptyPiece isOccupied.
    self deny: emptyPiece isPiece.
    
    self deny: rook isEmpty.
    self assert: rook isOccupied
]

{ #category : 'tests' }
MyEmptyPieceTest >> testEmptyPieceProperties [
    | emptyPiece |
    emptyPiece := MyEmptyPiece new.
    
    self assert: emptyPiece isEmpty.
    self deny: emptyPiece isOccupied.
    self deny: emptyPiece isPiece.
    self assert: emptyPiece id equals: '-'
]
