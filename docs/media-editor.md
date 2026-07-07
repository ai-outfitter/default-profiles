# Media editor profile

The `media-editor` profile is a video post-production setup for transcript-driven editing: whisper.cpp transcription, ffmpeg cuts/speed changes, and publication-ready exports.

## Bundled Pi skills

The profile bundles Pi skills under:

```text
profiles/media-editor/cli_specific/pi/skills/
```

- `transcribe` - extract 16 kHz mono audio with ffmpeg and produce timestamped SRT/JSON transcripts with whisper.cpp (`whisper-cli`).
- `ffmpeg-edit` - inspect media with ffprobe, cut and speed-adjust clips (setpts/atempo), concatenate, and export publication-ready H.264 MP4s.
- `setup-tools` - install and verify the toolchain (ffmpeg, whisper.cpp, whisper model) via Homebrew on macOS, Nix, or apt + source build on Debian/Ubuntu.

## Editing pipeline

The profile's system prompt describes the end-to-end pipeline: inspect → transcribe → plan the edit from the transcript → cut/speed with ffmpeg → export → re-transcribe the final render and verify.
