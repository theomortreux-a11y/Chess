Class {
	#name : 'MyBishop',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyBishop >> id [

	^ 'B'
]

{ #category : 'rendering' }
MyBishop >> renderPieceOn: aSquare [

	^ aSquare color isBlack
		  ifTrue: [ self isWhite ifTrue: [ 'b' ] ifFalse: [ 'v' ] ]
		  ifFalse: [ self isWhite ifTrue: [ 'B' ] ifFalse: [ 'V' ] ]
]

{ #category : 'rendering' }
MyBishop >> targetSquaresLegal: aBoolean [
    ^ ((self upRightDiagonalLegal: aBoolean) select: [ :s | s isOccupied or: s isEmpty ]) ,
      ((self upLeftDiagonalLegal: aBoolean) select: [ :s | s isOccupied or: s isEmpty ]) ,
      ((self downRightDiagonalLegal: aBoolean) select: [ :s | s isOccupied or: s isEmpty ]) ,
      ((self downLeftDiagonalLegal: aBoolean) select: [ :s | s isOccupied or: s isEmpty ])
]
