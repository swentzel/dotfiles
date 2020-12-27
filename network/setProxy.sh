#!/bin/bash

export httpPreProxyServer=localhost:3128

export http_proxy=$httpPreProxyServer
export https_proxy=$httpPreProxyServer
export HTTP_PROXY=$httpPreProxyServer
export HTTPS_PROXY=$httpPreProxyServer