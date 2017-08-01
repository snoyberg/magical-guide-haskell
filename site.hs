--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll


--------------------------------------------------------------------------------
main :: IO ()
main = hakyllWith config $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "artwork/*.png" $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match "bower_components/**" $ do
        route   idRoute
        compile copyFileCompiler

    match "lessons/**" $ do
        route $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/post.html"    defaultContext
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
            >>= relativizeUrls

    matchIndex EN
    matchIndex ES

    match "templates/*" $ compile templateBodyCompiler


matchIndex :: Lang -> Rules ()
matchIndex lang = match (index lang) $ do
    route idRoute
    compile $ do
        posts <- chronological =<< loadAll (lessons lang)
        let indexCtx =
                listField "posts" defaultContext (return posts) `mappend`
                constField "title" "Home"                `mappend`
                defaultContext
        getResourceBody
            >>= applyAsTemplate indexCtx
            >>= loadAndApplyTemplate "templates/default.html" indexCtx
            >>= relativizeUrls

config :: Configuration
config = defaultConfiguration { destinationDirectory = "docs" }

data Lang = EN | ES

class LangAssets a where
    index :: a -> Pattern
    lessons :: a -> Pattern

instance LangAssets Lang where
    index EN = "index.html"
    index ES = "es/index.html"

    lessons EN = "lessons/en/**"
    lessons ES = "lessons/es/**"
