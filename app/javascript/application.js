// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
// Import and register all your controllers from the importmap under controllers/*
import { Application } from "@hotwired/stimulus"
import { definitionsFromContext } from "@hotwired/stimulus-loading"

window.Stimulus = Application.start()
const context = require.context("controllers", true, /\.js$/)
Stimulus.load(definitionsFromContext(context))
