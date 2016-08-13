
(defgroup agda2-highlight-myfaces nil
  "Faces used to highlight Agda code.
If `agda2-highlight-face-groups' is nil."
:group 'agda2-highlight)
(defface agda2-highlight-keyword-myface
  '((t (:foreground "brown1")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-string-myface
  '((t (:foreground "indian red")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-number-myface
  '((t (:foreground "medium purple")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-symbol-myface
  '((t (:foreground "gray75")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-primitive-type-myface
  '((t (:foreground "SteelBlue1")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-bound-variable-myface
  '((t (:foreground "gray75")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-inductive-constructor-myface
  '((t (:foreground "SpringGreen3")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-coinductive-constructor-myface
  '((t (:foreground "gold")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-datatype-myface
  '((t (:foreground "SteelBlue1")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-field-myface
  '((t (:foreground "sea green")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-function-myface
  '((t (:foreground "SteelBlue1")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-module-myface
  '((t (:foreground "slate purple")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-postulate-myface
  '((t (:foreground "SteelBlue1")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-primitive-myface
  '((t (:foreground "SteelBlue1")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-macro-myface
  '((t (:foreground "aquamarine4")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-record-myface
  '((t (:foreground "SteelBlue1")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-dotted-myface
  '((t (:foreground "gray75")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-operator-myface
  '((t (:foreground "gray75")))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-error-myface
  '((t (:foreground "orange red" :underline t)))
  "MyFace"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-unsolved-meta-myfaces
  '((t (:background "yellow"
        :foreground "black")))
  "The face used for unsolved meta variables."
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-unsolved-constraint-myfaces
  '((t (:background "yellow"
        :foreground "black")))
  "The face used for unsolved constraints which are not connected to metas."
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-termination-problem-myfaces
  '((t (:background "light salmon"
        :foreground "black")))
  "The face used for termination problems."
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-incomplete-pattern-myfaces
  '((t (:background "wheat"
        :foreground "black")))
  "The face used for incomplete patterns. (Currently unused.)"
  :group 'agda2-highlight-myfaces)
(defface agda2-highlight-typechecks-myfaces
  '((t (:background "light blue"
        :foreground "black")))
  "The face used for code which is being type-checked."
:group 'agda2-highlight-myfaces)

(defvar agda2-highlight-faces
  '((keyword                . agda2-highlight-keyword-myface)
    (string                 . agda2-highlight-string-myface)
    (number                 . agda2-highlight-number-myface)
    (symbol                 . agda2-highlight-symbol-myface)
    (primitivetype          . agda2-highlight-primitive-type-myface)
    (bound                  . agda2-highlight-bound-variable-myface)
    (inductiveconstructor   . agda2-highlight-inductive-constructor-myface)
    (coinductiveconstructor . agda2-highlight-coinductive-constructor-myface)
    (datatype               . agda2-highlight-datatype-myface)
    (field                  . agda2-highlight-field-myface)
    (function               . agda2-highlight-function-myface)
    (module                 . agda2-highlight-module-myface)
    (postulate              . agda2-highlight-postulate-myface)
    (primitive              . agda2-highlight-primitive-myface)
    (record                 . agda2-highlight-record-myface)
    (dotted                 . agda2-highlight-dotted-myface)
    (operator               . agda2-highlight-operator-myface)
    (error                  . agda2-highlight-error-myface)
    (unsolvedmeta           . agda2-highlight-unsolved-meta-myface)
    (unsolvedconstraint     . agda2-highlight-unsolved-constraint-myface)
    (terminationproblem     . agda2-highlight-termination-problem-myface)
    (incompletepattern      . agda2-highlight-incomplete-pattern-myface)
(typechecks . agda2-highlight-typechecks-myface)))
