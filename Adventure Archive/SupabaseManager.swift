//
//  SupabaseManager.swift
//  Adventure Archive
//
//  Created by Sanjiv Anand on 22/06/24.
//

import Foundation
import Supabase

let supabase = SupabaseClient(
  supabaseURL: URL(string: "https://yppdruwanhkzcwkgozig.supabase.co")!,
  supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlwcGRydXdhbmhremN3a2dvemlnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTkwNDQ5NzEsImV4cCI6MjAzNDYyMDk3MX0.QMNMbY18r4z0II_9e_YeVF26t6oe-KqvE8EIomCTUMY"
)
