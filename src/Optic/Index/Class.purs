module Optic.Index.Class where

  import Data.Identity (Identity())
  import Data.Maybe (Maybe())

  import qualified Data.Map as M
  import qualified Data.Set as S
  import qualified Data.StrMap as SM

  class IndexKey m k

  class IndexValue m v

  instance indexKeyArr      :: IndexKey (a -> b)      a
  instance indexKeyArray    :: IndexKey [a]           Number
  instance indexKeyIdentity :: IndexKey (Identity a)  Unit
  instance indexKeyMap      :: IndexKey (M.Map k v)   k
  instance indexKeyMaybe    :: IndexKey (Maybe a)     Unit
  instance indexKeySet      :: IndexKey (S.Set k)     k
  instance indexKeyStrMap   :: IndexKey (SM.StrMap v) String

  instance indexValueArr      :: IndexValue (a -> b)      b
  instance indexValueArray    :: IndexValue [a]           a
  instance indexValueIdentity :: IndexValue (Identity a)  a
  instance indexValueMap      :: IndexValue (M.Map k v)   v
  instance indexValueMaybe    :: IndexValue (Maybe a)     a
  instance indexValueSet      :: IndexValue (S.Set k)     Unit
  instance indexValueStrMap   :: IndexValue (SM.StrMap v) v
