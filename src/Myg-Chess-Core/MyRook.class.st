Class {
	#name : 'MyRook',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyRook >> id [
	^ 'R'
]

{ #category : 'rendering' }
MyRook >> renderPieceOn: aSquare [

	^ aSquare renderRook: self
]

{ #category : 'rendering' }
MyRook >> targetSquares [

	^ self upFile , self downFile , self leftFile , self rightFile
]

{ #category : 'rendering' }
MyRook >> targetSquaresLegal: aBoolean [
    ^ ((self upFileLegal: aBoolean) 
        select: [ :s | s isOccupied or: s isEmpty ]) , 
      ((self downFileLegal: aBoolean) 
        select: [ :s | s isOccupied or: s isEmpty ]) , 
      ((self leftFileLegal: aBoolean) 
        select: [ :s | s isOccupied or: s isEmpty ]) , 
      ((self rightFileLegal: aBoolean) 
        select: [ :s | s isOccupied or: s isEmpty ])
]
