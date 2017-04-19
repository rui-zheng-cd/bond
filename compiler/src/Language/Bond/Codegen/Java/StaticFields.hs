-- Copyright (c) Microsoft. All rights reserved.
-- Licensed under the MIT license. See LICENSE file in the project root
-- for full license information.

{-# LANGUAGE QuasiQuotes, OverloadedStrings, RecordWildCards #-}

module Language.Bond.Codegen.Java.StaticFields
    ( schemaDefMember
    , fieldDefMember
    ) where

import Data.Text.Lazy (Text, pack)
import Text.Shakespeare.Text
import Language.Bond.Syntax.Types

schemaDefMember :: Text
schemaDefMember = pack "SCHEMA"

fieldDefMember :: Field -> Text
fieldDefMember Field {..} = [lt|#{fieldName}_FIELD_DEF|]