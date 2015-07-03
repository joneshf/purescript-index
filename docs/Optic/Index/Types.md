## Module Optic.Index.Types

#### `LensP`

``` purescript
type LensP s a = forall f. (Functor f) => (a -> f a) -> s -> f s
```

#### `TraversalP`

``` purescript
type TraversalP s a = forall f. (Applicative f) => (a -> f a) -> s -> f s
```


