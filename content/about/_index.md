---
title: 'About Me'
date: 2024-12-18
type: landing

design:
  # Default section spacing
  spacing: "4rem"

# Note: `username` refers to the user's folder name in `content/authors/`

# Page sections
sections:
  - block: biography
    content:
      username: joseph
      # Show a call-to-action button under your biography? (optional)
      button:
        text: Download Résumé
        url: resume.pdf
    design:
      banner:
        # Upload your cover image to the `assets/media/` folder and reference it here
        filename: kalen-emsley-Bkci_8qcdvQ-unsplash.jpg
      biography:
        # Customize the style of your biography text
        style: 'text-align: justify; font-size: 0.8em;'
  - block: resume-experience
    content:
      username: joseph
    design:
      # Hugo date format
      date_format: 'January 2006'
      # Education or Experience section first?
      is_education_first: false
  - block: resume-certification
    content:
      title: Certificates
      username: joseph
  - block: skills
    content:
      title: Skills & Hobbies
      username: joseph
  # - block: languages
  #   content:
  #     title: Languages
  #     username: joseph
---

