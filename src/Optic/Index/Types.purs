module Optic.Index.Types where

  type LensP      s a = forall f. (Functor     f) => (a -> f a) -> s -> f s
  type TraversalP s a = forall f. (Applicative f) => (a -> f a) -> s -> f s
