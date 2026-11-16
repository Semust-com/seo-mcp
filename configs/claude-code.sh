#!/usr/bin/env bash
# Register the Semust MCP server in Claude Code with only the Search Console, Rank Tracker, AI Overview Tracker, Index Monitor, Change Monitor and Competitor Analysis tools.
#
# Before running:
#   1. Replace your-api-key-here with your MCP key (Semust > Settings > MCP Setup).
#   2. Replace the path with the absolute path to semust_mcp.py
#      (run `pwd` inside the semust-mcp folder you cloned).
#   On Windows, use the full path to python.exe instead of python3.
#
# --scope user makes the server available in every project; use --scope local for this
# project only. Then run `claude mcp list` and type /mcp inside Claude Code to check it.

claude mcp add --scope user semust \
  -e SEMUST_API_KEY=your-api-key-here \
  -e SEMUST_MCP_TOOLSETS=gsc,rank,aiRank,indexing,changes,competitor \
  -- python3 /absolute/path/to/semust-mcp/semust_mcp.py
